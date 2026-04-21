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

## Tool Used
Microsoft SQL Server Management Studio

## 🧠 Sample Query

```sql
SELECT TOP (10) b.book_name, r.gross_sales
FROM dbo.books b
JOIN dbo.ratings r ON b.book_id = r.book_id
ORDER BY r.gross_sales DESC;
<img width="240" height="171" alt="image" src="https://github.com/user-attachments/assets/f08f1bd9-4004-4ddf-828e-4fbfad1fd7e7" />

