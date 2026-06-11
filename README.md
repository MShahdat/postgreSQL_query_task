# 🗄️ SQL Practice Repository – Bookstore & Online Course Database

This repository contains two complete SQL practice projects designed to strengthen core and advanced SQL skills using real-world database scenarios:

1. 📚 Bookstore Management System  
2. 🎓 Online Course Management System  

These projects demonstrate relational database design, data manipulation, joins, aggregations, constraints, and analytical queries using PostgreSQL-style SQL.

---

# 📁 Project Overview

This repository includes two SQL-based database systems:

- 📚 Bookstore Database
- 🎓 Online Course Database  

Each project contains schema design, sample data, and SQL queries for practice.

---

# 📚 Bookstore Database

## 🧩 Description  
The Bookstore system simulates an online book-selling platform where customers can purchase books. It demonstrates relational database design using primary and foreign keys.

---

## TABLE 1: customers  
This table stores customer information.

- `customer_id`: Integer, primary key  
- `customer_first_name`: Text field (max 50 characters)  
- `last_name`: Text field (max 50 characters)  
- `email`: Text field (max 100 characters)  
- `city`: Text field (max 50 characters)  
- `country`: Text field (max 50 characters)  
- `registration_date`: Date field  

---

## TABLE 2: books  
This table stores book details.

- `book_id`: Integer, primary key  
- `title`: Text field (max 200 characters)  
- `author`: Text field (max 100 characters)  
- `genre`: Text field (max 50 characters)  
- `price`: Decimal number (10 digits total, 2 after decimal point)  
- `publication_year`: Integer  
- `stock_quantity`: Integer  

---

## TABLE 3: orders  
This table stores purchase transactions.

- `order_id`: Integer, primary key  
- `customer_id`: Integer that references customers table  
- `book_id`: Integer that references books table  
- `order_date`: Date field  
- `quantity`: Integer  
- `total_amount`: Decimal number (10 digits total, 2 after decimal point)  

---

## 📊 SQL Concepts Used (Bookstore)

- Table creation with constraints (PRIMARY KEY, FOREIGN KEY)
- Data insertion
- Sorting (`ORDER BY`)
- Filtering (`WHERE`, `LIKE`, `IN`)
- Aggregations (`SUM`, `AVG`, `COUNT`, `MIN`, `MAX`)
- Grouping (`GROUP BY`, `HAVING`)
- String functions (`CONCAT`, `UPPER`, `LOWER`)
- Date filtering
- Column renaming (`ALTER TABLE`)
- JOIN operations

---

# 🎓 Online Course Database

## 🧩 Description  
This system simulates an e-learning platform where students enroll in online courses. It demonstrates real-world relational database design and analytics using SQL.

---

## TABLE 1: students  
This table stores student information.

- `student_id`: Integer, primary key  
- `first_name`: Text field (max 50 characters)  
- `last_name`: Text field (max 50 characters)  
- `email`: Text field (max 100 characters)  
- `phone`: Text field (max 20 characters, NULL allowed)  
- `country`: Text field (max 50 characters)  
- `enrollment_date`: Date field  

---

## TABLE 2: courses  
This table stores course information.

- `course_id`: Integer, primary key  
- `course_title`: Text field (max 150 characters)  
- `category`: Text field (max 50 characters)  
- `price`: Decimal number (10 digits total, 2 after decimal point)  
- `instructor`: Text field (max 100 characters)  
- `published_year`: Integer  

---

## TABLE 3: enrollments  
This table stores enrollment records.

- `enrollment_id`: Integer, primary key  
- `student_id`: Integer that references students table  
- `course_id`: Integer that references courses table  
- `enrollment_date`: Date field  
- `progress_percentage`: Integer (NULL allowed)  
- `paid_amount`: Decimal number (10 digits total, 2 after decimal point)  

---

## 📊 SQL Concepts Used (Online Course)

- NULL handling using `COALESCE`
- Pagination using `LIMIT` and `OFFSET`
- UPDATE and DELETE operations
- INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN
- GROUP BY with aggregation functions
- HAVING clause filtering
- Date functions like `DATE_TRUNC`
- Foreign key constraints and relational integrity

---

## 🚀 Key Learning Outcomes

By working on this repository, you will learn:

- Relational database design principles
- Primary and foreign key relationships
- Writing efficient and optimized SQL queries
- Data filtering and transformation techniques
- Real-world reporting using SQL
- Aggregation and analytics with GROUP BY
- Multi-table JOIN strategies
- Handling NULL values effectively
- Pagination and dataset control techniques

---
