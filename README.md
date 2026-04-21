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

## 🛠️ SQL Concepts Used

* SELECT, WHERE, ORDER BY
* GROUP BY & Aggregations
* JOIN operations
* Subqueries
* Filtering & Sorting

---

## 🔍 Analysis Performed

### 📈 Sales Analysis

* Identified top-selling books
* Compared revenue across genres
* Analyzed sales trends

---

### ⭐ Ratings Analysis

* Evaluated average ratings per genre
* Compared high-rated vs low-rated books
* Studied relationship between ratings and sales

---

### 📚 Genre & Author Insights

* Top-performing genres
* Authors with highest sales
* Genre popularity trends

---

## 💡 Key Insights

* 📊 Certain genres contribute significantly to total sales
* ⭐ Higher-rated books tend to perform better in sales
* 📚 A few authors dominate overall revenue
* 📉 Some books have high ratings but low sales (hidden opportunity)

---

## 🧹 Data Preparation

* Cleaned inconsistent values
* Ensured correct data types
* Handled missing values
* Structured data for SQL queries

---

## 🛠️ Tools Used

* Microsoft SQL Server Management System
* Data Analysis Techniques

---

## 📂 Project Structure

```id="booktree"
├── data/
├── sql_queries/
├── results/
└── README.md
```

---

## 📸 Sample Queries

--Top-Selling Books by Gross Sales


SELECT TOP (10) b.book_name, r.gross_sales
FROM dbo.books b
JOIN dbo.Ratings r ON b.book_id = r.book_id
ORDER BY r.gross_sales DESC;
```

---





