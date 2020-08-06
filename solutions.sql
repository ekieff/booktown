-- ### Order
-- 1. Find all subjects sorted by subject
--booktown=# SELECT subject FROM subjects GROUP BY subject;
-- 2. Find all subjects sorted by location
--booktown=# SELECT location  FROM subjects GROUP BY location;
-- ### Where
-- 3. Find the book "Little Women"
--booktown=# SELECT * FROM books WHERE title = 'Little Women';
-- 4. Find all books containing the word "Python"
--booktown=# SELECT title FROM books WHERE title LIKE '%Python';
--       title
--------------------
-- Programming Python
-- Learning Python
--(2 rows)
-- 5. Find all subjects with the location "Main St" sort them by subject
--booktown=# SELECT * FROM subjects WHERE location = 'Main St' ORDER BY subject;
-- id |     subject     | location
----+-----------------+----------
--  6 | Drama           | Main St
--  7 | Entertainment   | Main St
-- 13 | Romance         | Main St
-- 15 | Science Fiction | Main St
--(4 rows)


-- ### Joins

-- 6. Find all books about Computers and list ONLY the book titles
--booktown=# SELECT title FROM books WHERE subject_id = 4;

-- 7. Find all books and display a result table with ONLY the following columns
-- 	* Book title
-- 	* Author's first name
-- 	* Author's last name
-- 	* Book subject
--booktown=# SELECT b.title, a.first_name, a.last_name, s.subject
--booktown-# FROM books b
--booktown-# INNER JOIN authors a
--booktown-# ON b.author_id = a.id
--booktown-# INNER JOIN subjects s
--booktown-# ON b.subject_id = s.id;

-- 8. Find all books that are listed in the stock table
-- 	* Sort them by retail price (most expensive first)
-- 	* Display ONLY: title and price
--booktown=# SELECT books.title, stock.retail
--booktown-# FROM books
--booktown-# INNER JOIN editions
--booktown-# ON books.id = editions.book_id
--booktown-# INNER JOIN stock
--booktown-# ON stock.isbn = editions.isbn
--booktown-# ORDER BY stock.retail DESC;
-- 9. Find the book "Dune" and display ONLY the following columns
-- 	* Book title
-- 	* ISBN number
-- 	* Publisher name
-- 	* Retail price
-- 10. Find all shipments sorted by ship date display a result table with ONLY the following columns:
-- 	* Customer first name
-- 	* Customer last name
-- 	* ship date
-- 	* book title

-- ### Grouping and Counting

-- 11. Get the COUNT of all books
-- 12. Get the COUNT of all Locations
-- 13. Get the COUNT of each unique location in the subjects table. Display the count and the location name. (hint: requires GROUP BY).
-- 14. List all books. Display the book_id, title, and a count of how many editions each book has. (hint: requires GROUP BY and JOIN)
