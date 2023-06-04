SET GLOBAL event_scheduler = ON;

/*--------------------------------------------------------TRIGGERS------------------------------------------------------------------*/
DELIMITER //

/*after a copy of a book gets borrowed, available_copies should decrease by 1*/
CREATE TRIGGER `upd_copies_on_borrow`
AFTER INSERT ON `BorrowBook`
FOR EACH ROW
BEGIN
IF (NEW.return_date IS NULL)
THEN
  UPDATE HasBook
  SET available_copies = available_copies - 1
  WHERE school_name_FK = (SELECT school_name_FK FROM User WHERE user_id = NEW.user_id_FK) AND ISBN_FK = NEW.ISBN_FK;
END IF;
END //

/* after a copy of a book is returned, available_copies should increase by 1*/
CREATE TRIGGER `upd_copies_on_return`
AFTER UPDATE ON `BorrowBook`
FOR EACH ROW
BEGIN
IF OLD.return_date IS NULL AND NEW.return_date IS NOT NULL
THEN
  UPDATE HasBook
  SET available_copies = available_copies + 1
  WHERE school_name_FK = (SELECT school_name_FK FROM User WHERE user_id = NEW.user_id_FK) AND ISBN_FK = NEW.ISBN_FK;

  UPDATE User
  SET number_of_borrowed_books = number_of_borrowed_books - 1
  WHERE user_id = NEW.user_id_FK;
END IF;
END //

/*after school_lib_operator accepts a reservation the book should be added to borrowed books*/
CREATE TRIGGER `upd_borrow`
AFTER UPDATE ON `ReserveBook`
FOR EACH ROW
BEGIN
IF (OLD.reservation_status = 'made' AND NEW.reservation_status = 'accepted')
THEN
  INSERT INTO BorrowBook (user_id_FK, ISBN_FK, borrow_date, return_date, due_date, late)
  VALUES (NEW.user_id_FK, NEW.ISBN_FK, CAST(NOW() as DATE), NULL, DATE_ADD(CAST(NOW() as DATE), INTERVAL 7 DAY), false);
END IF;
END //

/*after a reservation for a book is made by a user, number_of_reserved_books should increase by 1*/
CREATE TRIGGER `upd_reserve_num`
AFTER INSERT ON `ReserveBook`
FOR EACH ROW
BEGIN
IF (NEW.reservation_status = 'made' OR NEW.reservation_status = 'waiting')
THEN
  UPDATE User
  SET number_of_reserved_books = number_of_reserved_books + 1
  WHERE user_id = NEW.user_id_FK;
END IF;
END //

/*after a reservation is accepted for a user --> a borrowing is made, number_of_borrowed_books should increase by 1*/
CREATE TRIGGER `upd_borrow_num`
AFTER INSERT ON `BorrowBook`
FOR EACH ROW
BEGIN
IF (NEW.return_date IS NULL)
THEN
  UPDATE User
  SET number_of_borrowed_books = number_of_borrowed_books + 1,
      total_num_of_borrowed_books = total_num_of_borrowed_books + 1
  WHERE user_id = NEW.user_id_FK;
END IF;
END //

/*after cancellation of a reservation is made by a user, number_of_reserved_books should decrease by 1, allowing another reservation*/
CREATE TRIGGER `upd_reserve_num_on_cancellation`
AFTER UPDATE ON `ReserveBook`
FOR EACH ROW
BEGIN
IF ((OLD.reservation_status = 'made' OR OLD.reservation_status = 'waiting') AND NEW.reservation_status = 'cancelled')
THEN
  UPDATE User
  SET number_of_reserved_books = number_of_reserved_books - 1
  WHERE user_id = NEW.user_id_FK;
END IF;
END //

/*when a user is added, check if age is valid for this user type*/
CREATE TRIGGER `check_age`
BEFORE INSERT ON `User`
FOR EACH ROW
BEGIN
  IF NEW.user_type = 'student' AND ((YEAR(CAST(NOW() as DATE))- YEAR(NEW.birth_date)) < 12 OR (YEAR(CAST(NOW() as DATE))- YEAR(NEW.birth_date)) > 18) THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Age must be between 12 and 18.';
  END IF;
  IF NEW.user_type = 'teacher' AND (YEAR(CAST(NOW() as DATE))- YEAR(NEW.birth_date)) < 22 THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Age must be at least 22.';
  END IF;
END //

/*set status = made for the oldest reservation made for a returned book*/
CREATE TRIGGER `upd_status_on_positive_copies`
AFTER UPDATE ON `HasBook`
FOR EACH ROW
BEGIN
IF NEW.available_copies > OLD.available_copies
THEN
  UPDATE ReserveBook
  SET reservation_status = 'made'
  WHERE reservation_status = 'waiting'
        AND reservation_date = (SELECT MIN(reservation_date) FROM ReserveBook b JOIN User u
                                ON b.user_id_FK = u.user_id
                                WHERE u.school_name_FK = NEW.school_name_FK
                                AND b.reservation_status = 'waiting'
                                AND b.ISBN_FK = NEW.ISBN_FK);
END IF;
END //

DELIMITER ;

/*--------------------------------------------------------EVENTS------------------------------------------------------------------*/
DELIMITER //

CREATE EVENT `check_late_reservations`
ON SCHEDULE
EVERY 6 HOUR
STARTS CURRENT_TIMESTAMP
DO
BEGIN
  /*cancel reservations that have been waiting/made for a week*/
  UPDATE ReserveBook
  SET reservation_status = 'cancelled'
  WHERE CAST(DATE_ADD(reservation_date, INTERVAL 6 DAY) AS DATE) < CAST(NOW() AS DATE) AND (reservation_status = 'waiting' OR reservation_status = 'made');

  /*set late = 1 if 7 days have passed from the latest unretrurned borrowing*/
  UPDATE BorrowBook
  SET late = 1
  WHERE return_date IS NULL AND DATE_ADD(borrow_date, INTERVAL 6 DAY) < CAST(NOW() AS DATE);

  /*set number of reserved books = 0 when 7 days have passed from the 2nd latest reservation*/
  UPDATE User
  SET number_of_reserved_books = 0
  WHERE user_id IN (SELECT user_id_FK FROM ReserveBook WHERE
        CAST(DATE_ADD((
          SELECT
            IF(DATEDIFF(
              (SELECT MAX(reservation_date) AS max_date FROM ReserveBook WHERE user_id_FK = user_id AND reservation_status != 'cancelled'),
              MAX(reservation_date)
            ) > 7,
            (SELECT MAX(reservation_date) AS max_date FROM ReserveBook WHERE user_id_FK = user_id AND reservation_status != 'cancelled'),
            MAX(reservation_date)
            ) AS second_max
          FROM ReserveBook
          WHERE reservation_date < (
            SELECT MAX(reservation_date) AS max_date
            FROM ReserveBook
            WHERE user_id_FK = user_id AND reservation_status != 'cancelled'
          )
          AND user_id_FK = user_id AND reservation_status != 'cancelled'), INTERVAL 6 DAY) AS DATE) < CAST(NOW() AS DATE));

END //

DELIMITER ;
