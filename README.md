# 📚 Book Store Sales & Ratings Analysis (SQL Project)

## 📌 Overview
This project analyzes bookstore data using SQL to extract meaningful insights about book sales, customer ratings, and genre performance.

The goal is to demonstrate SQL skills such as:
- Joins
- Aggregations
- Sorting & Filtering
- Data analysis queries

---

## 🗂️ Dataset
The project uses two main tables:

### 1. `books`
- `book_id`
- `book_name`
- `genre`
- Other book-related details

### 2. `ratings`
- `book_id`
- `gross_sales`
- `rating`

---

## 🔍 Key Analysis Performed

### ✅ Top-Selling Books
- Identified top 10 books based on gross sales

### ✅ Average Rating by Genre
- Calculated average ratings for each genre

### ✅ Sales Performance Insights
- Compared book sales across different categories

---

### Tool Used
Microsoft SQL Server Management Studio

### 🚀 How to Run
Open SQL Server Management Studio (SSMS)
Create a database (e.g., Book store sales and rating)
Import or create tables (books, ratings)
Run the SQL script provided in this repository

### 📊 Key Insights
High-selling books are not always the highest-rated
Certain genres consistently perform better in sales
Customer ratings help identify quality vs popularity

### Conclusion
The analysis shows that a few top-performing books contribute significantly to overall sales, highlighting a strong revenue concentration.
Customer ratings and sales do not always align, indicating that popularity and quality can differ.
Genre-wise insights reveal consistent trends, helping identify high-demand categories for better business decisions.


### 🧠 Sample Query

```sql
SELECT TOP (10) b.book_name, r.gross_sales
FROM dbo.books b
JOIN dbo.ratings r ON b.book_id = r.book_id
ORDER BY r.gross_sales DESC;




