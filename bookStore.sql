-- create a database
create database bookstore



-- create a customers table
create table customers (
  customer_id serial primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  city varchar(50),
  country varchar(50),
  registration_date date
)



-- create a books table
create table books (
  book_id serial primary key,
  title varchar(200),
  author varchar(100),
  genre varchar(50),
  price decimal(10,2),
  publication_year int,
  stock_quantity int
)



-- create order table
create table orders (
  order_id serial primary key,
  customer_id int references customers(customer_id),
  book_id int references books(book_id),
  order_date date,
  quantity int,
  total_amount decimal(10,2)
);



-- inser data into customers
insert into customers (first_name, last_name, email, city, country, registration_date)
values
('John', 'Smith', 'john.smith@email.com', 'New York', 'USA', '2023-01-15'),
('Emma', 'Johnson', 'emma.j@email.com', 'London', 'UK', '2023-02-20'),
('Michael', 'Brown', 'mbrown@email.com', 'Toronto', 'Canada', '2023-01-10'),
('Sophia', 'Davis', 'sophia.d@email.com', 'Sydney', 'Australia', '2023-03-05'),
('James', 'Wilson', 'jwilson@email.com', 'New York', 'USA', '2023-02-28'),
('Oliver', 'Taylor', 'oliver.t@email.com', 'London', 'UK', '2023-04-12'),
('Ava', 'Anderson', 'ava.anderson@email.com', 'Los Angeles', 'USA', '2023-03-18'),
('William', 'Martinez', 'w.martinez@email.com', 'Madrid', 'Spain', '2023-01-25'),
('Isabella', 'Garcia', 'isabella.g@email.com', 'Mexico City', 'Mexico', '2023-02-14'),
('Lucas', 'Rodriguez', 'lucas.r@email.com', 'Buenos Aires', 'Argentina', '2023-03-30');


select * from customers


-- insert into books info
insert into books (title, author, genre, price, publication_year, stock_quantity)
values 
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 12.99, 1925, 45),
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 14.99, 1960, 32),
('1984', 'George Orwell', 'Science Fiction', 13.99, 1949, 28),
('Pride and Prejudice', 'Jane Austen', 'Romance', 11.99, 1813, 50),
('The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 12.99, 1951, 22),
('Harry Potter and the Sorcerer Stone', 'J.K. Rowling', 'Fantasy', 19.99, 1997, 60),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 15.99, 1937, 38),
('Brave New World', 'Aldous Huxley', 'Science Fiction', 13.99, 1932, 25),
('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy', 29.99, 1954, 41),
('Animal Farm', 'George Orwell', 'Fiction', 10.99, 1945, 55),
('Fahrenheit 451', 'Ray Bradbury', 'Science Fiction', 12.99, 1953, 30),
('The Great Adventure', 'John Anderson', 'Fiction', 16.99, 2020, 18),
('Mystery in Paris', 'Marie Dubois', 'Mystery', 14.99, 2019, 27),
('Romance in Rome', 'Isabella Rossi', 'Romance', 13.99, 2021, 35);


select * from books


-- insert into orders info
insert into orders (customer_id, book_id, order_date, quantity, total_amount)
values
(1, 1, '2023-05-10', 2, 25.98),
(1, 6, '2023-05-15', 1, 19.99),
(2, 3, '2023-05-12', 1, 13.99),
(3, 2, '2023-05-11', 3, 44.97),
(4, 7, '2023-05-13', 1, 15.99),
(5, 9, '2023-05-14', 2, 59.98),
(2, 4, '2023-05-16', 1, 11.99),
(6, 6, '2023-05-17', 2, 39.98),
(7, 1, '2023-05-18', 1, 12.99),
(8, 8, '2023-05-19', 1, 13.99),
(1, 10, '2023-06-01', 2, 21.98),
(3, 5, '2023-06-02', 1, 12.99),
(9, 11, '2023-06-03', 3, 38.97),
(10, 12, '2023-06-04', 1, 16.99),
(4, 13, '2023-06-05', 2, 29.98),
(5, 14, '2023-06-06', 1, 13.99),
(2, 6, '2023-06-07', 1, 19.99),
(7, 3, '2023-06-08', 2, 27.98);

select * from orders


-- Display all books with their titles and prices, ordered by price (lowest to highest)
select title, price from books 
  order by price asc


-- Find all distinct countries where customers are from
select distinct country from customers


-- Find all books whose titles start with "The"
select * from books
  where title like 'The%'



-- Change the column name first_name to customer_first_name in the customers table
alter table customers
  rename column first_name to customer_first_name


-- Find all books in the Fantasy genre
select * from books
  where genre = 'Fantasy'



-- Count the total number of orders in the database
select count(order_id) as "total_order" from orders


-- Find the average price of books by genre, but only show genres with an average price greater than $14
select genre, round(avg(price), 2) as "average_price" from books
  group by genre
  having avg(price) > 14



-- Find all customers whose email addresses end with .com and are from either USA or UK
select * from customers
  where (email like '%.com') and (country = 'USA' or country = 'UK')




-- Display all customers with their full name in uppercase (concatenated first and last name),
-- original email, and city in lowercase.
-- Only show customers from USA or UK.
select upper(concat(customer_first_name, ' ', last_name)) as "Full Name", email, lower(city) as "city", country from customers
  where country in ('USA', 'UK')  




-- Find the total revenue, average order amount, maximum order amount, and
-- minimum order amount from all orders placed in June 2023.
select sum(total_amount) as "total revenue", round(avg(total_amount), 2) as "average order amount", max(total_amount) as "maximum order amount", min(total_amount) as "minimum order amount" from orders
  where order_date between '2023-06-01' and '2023-06-30'


