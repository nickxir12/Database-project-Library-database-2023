use project;

---------------------------------------------------------TABLES-------------------------------------------------------------------
create table School (
  school_name varchar(100) NOT NULL,
  school_address varchar(100) NOT NULL,
  city varchar(50) NOT NULL,
  school_phone_number varchar(50) NOT NULL,       /*ex. +30 211 5014 128*/
  school_email varchar(100) NOT NULL,
  school_principal varchar(50) NOT NULL,          /*ex. Ηλίας Καλλιώρας*/
  PRIMARY KEY(school_name)
)ENGINE=InnoDB;

create table Books (
  ISBN varchar(20) NOT NULL,                      /*ex. 	978-3-16-148410-0*/
  title varchar(50) NOT NULL,
  publisher varchar(100) NOT NULL,
  page_number int NOT NULL,
  summary varchar(1000) NOT NULL,
  cover varchar(500),                             /*link to image on the internet*/
  language varchar(20),
  PRIMARY KEY(ISBN)
)ENGINE=InnoDB;

create table Category (
  category varchar(20) NOT NULL,
  ISBN_FK varchar(20) NOT NULL,
  PRIMARY KEY(ISBN_FK, category),
  CONSTRAINT belongstocat_fk_1 FOREIGN KEY (ISBN_FK) REFERENCES Books (ISBN) ON UPDATE CASCADE
)ENGINE=InnoDB;

create table Keyword (
  keyword varchar(20) NOT NULL,
  ISBN_FK varchar(20) NOT NULL,
  PRIMARY KEY(ISBN_FK, keyword),
  CONSTRAINT haskeyword_fk_1 FOREIGN KEY (ISBN_FK) REFERENCES Books (ISBN) ON UPDATE CASCADE
)ENGINE=InnoDB;

create table Author (
  author_id int AUTO_INCREMENT NOT NULL,           /*we can have many auhtors with the same name*/
  author varchar(30) NOT NULL,                     /*author name*/
  PRIMARY KEY(author_id)
)ENGINE=InnoDB;

create table HasAuthor (
  author_id_FK int NOT NULL,           /*author id*/
  ISBN_FK varchar(20) NOT NULL,
  PRIMARY KEY(author_id_FK, ISBN_FK),
  CONSTRAINT hasauthor_fk_1 FOREIGN KEY (author_id_FK) REFERENCES Author (author_id) ON UPDATE CASCADE,
  CONSTRAINT hasauthor_fk_2 FOREIGN KEY (ISBN_FK) REFERENCES Books (ISBN) ON UPDATE CASCADE
)ENGINE=InnoDB;

create table HasBook (
  school_name_FK varchar(100) NOT NULL,           /*school name*/
  ISBN_FK varchar(20) NOT NULL,                   /*ISBN*/
  available_copies int unsigned NOT NULL,
  PRIMARY KEY(school_name_FK, ISBN_FK),
  CONSTRAINT hasbook_fk_1 FOREIGN KEY (school_name_FK) REFERENCES School (school_name) ON UPDATE CASCADE,
  CONSTRAINT hasbook_fk_2 FOREIGN KEY (ISBN_FK) REFERENCES Books (ISBN) ON UPDATE CASCADE
)ENGINE=InnoDB;

create table User (
  user_id varchar(50) NOT NULL,
  school_name_FK varchar(100) NOT NULL,
  first_name varchar(20),
  last_name varchar(30),
  username varchar(20) NOT NULL,
  password varchar(30) NOT NULL,
  user_type ENUM('student', 'teacher', 'school_lib_operator'),
  accepted_user BOOL NOT NULL,                    /*0 --> not accepted by operator, 1--> accepted by operator*/
  number_of_reserved_books int,                   /*2 per week for student, 1 per week for teacher*/
  number_of_borrowed_books int,                   /*2 per week for student, 1 per week for teacher*/
  total_num_of_borrowed_books int,
  birth_date DATE,
  active_user boolean,                            /*1 if user is enabled, 0 if user is disabled*/
  CONSTRAINT belongsto_fk_1 FOREIGN KEY (school_name_FK) REFERENCES School (school_name) ON UPDATE CASCADE,
  CONSTRAINT borrow_lim check (number_of_borrowed_books <= 2),
  CONSTRAINT reserve_lim check (number_of_reserved_books <= 2),
  PRIMARY KEY(user_id)
)ENGINE=InnoDB;

create table Admin (
  admin_username varchar(20) NOT NULL,
  admin_password varchar(30) NOT NULL,
  PRIMARY KEY(admin_username)
)ENGINE=InnoDB;

create table RateBook (
  user_id_FK varchar(50) NOT NULL,                /*user_id*/
  ISBN_FK varchar(20) NOT NULL,                   /*ISBN*/
  Likert_rating int CHECK (Likert_rating >= 0 AND Likert_rating <= 5),
  critique varchar(1000),
  accepted_critique boolean NOT NULL,
  PRIMARY KEY(user_id_FK, ISBN_FK),
  CONSTRAINT ratebook_fk_1 FOREIGN KEY (user_id_FK) REFERENCES User (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT ratebook_fk_2 FOREIGN KEY (ISBN_FK) REFERENCES Books (ISBN) ON UPDATE CASCADE
)ENGINE=InnoDB;

create table ReserveBook (
  user_id_FK varchar(50) NOT NULL,                /*user_id*/
  ISBN_FK varchar(20) NOT NULL,                   /*ISBN*/
  reservation_date DATETIME,                      /*YYYY-MM-DD HH:MM:SS*/
  reservation_status ENUM ('made', 'accepted', 'waiting', 'cancelled'),       /*made: made reservation, accepetd: valid reservation, waiting: requested borrowing and book was not available, cancelled: user cancelled reservation*/
  PRIMARY KEY(user_id_FK, ISBN_FK, reservation_date),
  CONSTRAINT reservebook_fk_1 FOREIGN KEY (user_id_FK) REFERENCES User (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT reservebook_fk_2 FOREIGN KEY (ISBN_FK) REFERENCES Books (ISBN) ON UPDATE CASCADE
)ENGINE=InnoDB;

create table BorrowBook (
  user_id_FK varchar(50) NOT NULL,                /*user_id*/
  ISBN_FK varchar(20) NOT NULL,                   /*ISBN*/
  borrow_date DATE,
  return_date DATE,
  due_date DATE,
  late boolean,
  PRIMARY KEY(user_id_FK, ISBN_FK, borrow_date),
  CONSTRAINT borrowbook_fk_1 FOREIGN KEY (user_id_FK) REFERENCES User (user_id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT borrowbook_fk_2 FOREIGN KEY (ISBN_FK) REFERENCES Books (ISBN) ON UPDATE CASCADE,
  CONSTRAINT valid_borrowing check (return_date >= borrow_date)
)ENGINE=InnoDB;

---------------------------------------------------------INDEXES-------------------------------------------------------------------
-- indexes on Primary Keys are already created by sql
CREATE INDEX idx_user_type ON User (user_type);                                           /*ofet needed*/
CREATE INDEX idx_user_school ON User (school_name_FK);                                    /*often needed, also a foreign key*/
CREATE INDEX idx_user_name ON User (first_name, last_name);                               /*often needed, especially on website*/
CREATE INDEX idx_user_school ON Books (title);                                            /*often neede*/
CREATE INDEX idx_author ON Author (author);                                               /*ofetn needed, especially in requested queries*/
CREATE INDEX idx_status ON ReserveBook (reservation_status);                              /*often needed in trigger upadates/checks*/

/*frequently used attributes, like ISBN_FK (in any table) or user_id_FK (in any table) or borrow_date
are also part of composite primary keys, so MySQL/InnoDB Engine automatically creates indices for them,
and any subset of them. So there is no need to create new indices for them. Only indices needed are
for Foreign Keys that are not part of composite primary keys, and any attributes that are needed often in queries,
like user_type.*/

show tables;
desc School;
desc Books;
desc HasBook;
desc User;
desc RateBook;
desc ReserveBook;
desc BorrowBook;
