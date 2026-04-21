--Bookstore Sales and Ratings Analysis Using SQL

USE [Book store sales and rating];
GO

--Top-Selling Books by Gross Sales


SELECT TOP (10) b.book_name, r.gross_sales
FROM dbo.books b
JOIN dbo.Ratings r ON b.book_id = r.book_id
ORDER BY r.gross_sales DESC;

--Average Rating by Genre

SELECT 
    b.genre,
    CAST(ROUND(AVG(r.book_average_rating), 2) AS DECIMAL(10,2)) AS avg_rating
FROM Books b
JOIN Ratings r 
    ON b.book_id = r.book_id
GROUP BY b.genre;

--Publishers with Highest Revenue
SELECT b.publisher,
       SUM(r.publisher_revenue) AS total_revenue,
       RANK() OVER (ORDER BY SUM(r.publisher_revenue) DESC) AS revenue_rank
FROM Books b
JOIN Ratings r ON b.book_id = r.book_id
GROUP BY b.publisher;

--High-Rated Books Published in 2012

SELECT b.book_name, r.book_average_rating
FROM Books b
JOIN Ratings r ON b.book_id = r.book_id
WHERE b.publishing_year = 2012
AND r.book_average_rating > 4.0;


--Prolific Authors and Their Ratings 
WITH AuthorStats AS (
    SELECT author, COUNT(*) AS total_books,
    CAST(ROUND(AVG(r.author_rating), 2) AS DECIMAL(10,2)) AS avg_author_rating
    FROM Books b
    JOIN Ratings r ON b.book_id = r.book_id
    GROUP BY author
)
SELECT * FROM AuthorStats
WHERE total_books > 1 ;


--Hidden Gems (High Rating, Low Sales)

SELECT 
    b.book_name,
    CAST(ROUND(r.book_average_rating, 2) AS DECIMAL(10,2)) AS book_average_rating,
    r.units_sold
FROM Books b
JOIN Ratings r 
    ON b.book_id = r.book_id
WHERE r.book_average_rating > 4.5
  AND r.units_sold < 1000;


--Profit Margin per Book

select b.book_name, (r.gross_sales - r.publisher_revenue) as profit_margin
from books b
join ratings r on b.book_id=r.book_id
order by profit_margin desc


--Most Rated English Books

SELECT TOP 5 b.book_name, r.book_ratings_count
FROM Books b
JOIN Ratings r ON b.book_id = r.book_id
WHERE b.language_code = 'EN'
ORDER BY r.book_ratings_count DESC;


--Sales by Publishing Year
SELECT b.publishing_year,
       SUM(r.units_sold) AS total_units,
       SUM(r.gross_sales) AS total_sales
FROM Books b
JOIN Ratings r ON b.book_id = r.book_id
GROUP BY b.publishing_year;

--Author Rating Higher than Book Rating
SELECT b.book_name, CAST(ROUND(r.author_rating,2) AS DECIMAL (10,2)) AS author_rating,
CAST(ROUND(r.book_average_rating,2) AS DECIMAL (10,2)) AS book_average_rating
FROM Books b
JOIN Ratings r ON b.book_id = r.book_id
WHERE r.author_rating > r.book_average_rating;