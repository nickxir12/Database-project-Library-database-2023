3.1.1)
SELECT *
FROM borrowbook
WHERE user_id_FK IN (
  SELECT user_id
  FROM User
  WHERE school_name_FK = 'selected_school'
)
AND (borrow_date > 'selected_start_date' AND borrow_date < 'selected_end_date'
);

3.1.2)
SELECT DISTINCT a.author
FROM Author a
JOIN HasAuthor ha ON a.author_id = ha.author_id_FK
JOIN category c ON c.ISBN_FK = ha.ISBN_FK
WHERE c.category = 'Drama';

SELECT u.first_name,u.last_name
FROM User u
JOIN BorrowBook bb ON u.user_id = bb.user_id_FK
JOIN (SELECT ISBN_FK FROM category WHERE category = 'Drama') c
ON c.ISBN_FK = bb.ISBN_FK
WHERE u.user_type = 'teacher'
AND DATE_ADD(bb.borrow_date, INTERVAL 1 YEAR) >= NOW();

3.1.3)
SELECT DISTINCT u.first_name,u.last_name,u.total_num_of_borrowed_books FROM User u
JOIN BorrowBook bb
ON u.user_id = bb.user_id_FK
WHERE u.user_type = 'teacher'
AND DATE_ADD(birth_date, INTERVAL 40 YEAR) >= NOW()
ORDER BY u.total_num_of_borrowed_books DESC;

3.1.4)
SELECT a.author, a.author_id FROM BorrowBook bb
LEFT JOIN HasAuthor ha ON ha.ISBN_FK = bb.ISBN_FK
RIGHT JOIN Author a ON a.author_id = ha.author_id_FK
WHERE ha.author_id_FK IS NULL;

3.1.5)
WITH valid AS (SELECT u.first_name, u.last_name, (
  SELECT COUNT(*) FROM BorrowBook
  WHERE user_id_FK IN (
    SELECT user_id FROM User
    WHERE school_name_FK = u.school_name_FK)
  ) AS borrow_count FROM User u
  WHERE u.user_type = 'school_lib_operator'
  AND (SELECT COUNT(*) FROM BorrowBook WHERE user_id_FK IN (SELECT user_id FROM User WHERE school_name_FK = u.school_name_FK)) >= 20)
SELECT *
FROM valid v1
WHERE EXISTS (
  SELECT *
  FROM valid v2
  WHERE v1.borrow_count = v2.borrow_count
  AND (v1.first_name, v1.last_name) <> (v2.first_name, v2.last_name)
);

--better version
WITH valid AS (
  SELECT u.school_name_FK, COUNT(*) AS borrow_count
  FROM User u
  INNER JOIN (
    SELECT user_id_FK, borrow_date
    FROM BorrowBook
    WHERE YEAR(borrow_date) = 'selected_year'
  ) bb ON u.user_id = bb.user_id_FK
  GROUP BY u.school_name_FK
  HAVING COUNT(*) >= 20
)
SELECT op.first_name, op.last_name, v.borrow_count
FROM User op
INNER JOIN valid v
ON op.school_name_FK = v.school_name_FK
AND op.user_type = 'school_lib_operator';

3.1.6)
WITH top3 AS (
  WITH liked AS (
    SELECT bb.ISBN_FK
    FROM BorrowBook bb
    JOIN (
        SELECT ISBN_FK
        FROM category
        GROUP BY ISBN_FK
        HAVING COUNT(*) > 1
    ) c ON bb.ISBN_FK = c.ISBN_FK
  )
  SELECT l.ISBN_FK, (
    SELECT COUNT(*)
    FROM BorrowBook
    WHERE ISBN_FK = l.ISBN_FK
  ) AS popularity FROM liked l
  GROUP BY l.ISBN_FK
  ORDER BY popularity DESC
  LIMIT 3
)
SELECT top.ISBN_FK, c1.category, c2.category, top.popularity
FROM top3 top
JOIN category c1 ON c1.ISBN_FK = top.ISBN_FK
JOIN category c2 ON c2.ISBN_FK = top.ISBN_FK
WHERE c1.category <> c2.category
GROUP BY top.ISBN_FK;


3.1.7)
WITH top_authors AS (
  SELECT author_id_FK,(
    SELECT COUNT(*)
    FROM HasAuthor
    WHERE author_id_FK = ha.author_id_FK
  ) AS written_books FROM HasAuthor ha
  GROUP BY ha.author_id_FK
  ORDER BY written_books DESC
)
SELECT a.author, top.written_books
FROM top_authors top
JOIN author a ON a.author_id = top.author_id_FK
JOIN (
    SELECT MAX(written_books) - 5 AS min_books
    FROM top_authors
) sub ON top.written_books <= sub.min_books;

--better version
WITH top_authors AS (
  SELECT author_id_FK, COUNT(*) AS written_books
  FROM HasAuthor
  GROUP BY author_id_FK
),
max_written_books AS (
  SELECT MAX(written_books) AS max_count
  FROM top_authors
)
SELECT a.author, ta.written_books
FROM top_authors ta
JOIN author a ON a.author_id = ta.author_id_FK
CROSS JOIN max_written_books mw
WHERE ta.written_books <= mw.max_count - 5;


3.2.2)
SELECT u.first_name, u.last_name, DATEDIFF(NOW(), bb.due_date) AS late_days FROM BorrowBook bb
JOIN User u ON bb.user_id_FK = u.user_id
WHERE bb.user_id_FK IN (SELECT u.user_id WHERE first_name LIKE '%%' AND last_name LIKE '%%')
AND bb.return_date IS NULL
AND bb.late = 1
AND DATEDIFF(NOW(), bb.due_date) >= 5;

3.2.3)
WITH ratings AS (
  SELECT rb.user_id_FK, rb.ISBN_FK, rb.Likert_rating AS average_rating
  FROM RateBook rb
  JOIN (SELECT DISTINCT user_id_FK FROM BorrowBook) bb ON rb.user_id_FK = bb.user_id_FK
  JOIN category c ON rb.ISBN_FK = c.ISBN_FK
  WHERE rb.user_id_FK LIKE '%%'
    AND c.category LIKE '%Drama%'
)
SELECT AVG(r.average_rating) AS average_rating
FROM ratings r;

3.3.1)
SELECT DISTINCT b.*
FROM books AS b
JOIN hasbook AS hb ON hb.ISBN_FK = b.ISBN
JOIN hasauthor AS ha ON ha.ISBN_FK = b.ISBN
JOIN category AS c ON c.ISBN_FK = b.ISBN
JOIN Author AS a ON a.author_id = ha.author_id_FK
WHERE b.title LIKE '%'
  AND a.author LIKE '%'
  AND c.category LIKE '%'
  AND hb.school_name_FK = 'specify_school_name';


3.3.2)
SELECT DISTINCT b.*
FROM Books AS b
WHERE b.ISBN IN (
  SELECT ISBN_FK
  FROM BorrowBook
  WHERE user_id_FK = 'specify_user_id'
);
