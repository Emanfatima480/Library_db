CREATE DATABASE library_db;

CREATE TABLE Books (
    Book_Id SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Year_Published INT,
    IsAvailable BOOLEAN,
    Price DECIMAL(8, 2),
    Publication VARCHAR(100)
);


INSERT INTO Books (Title, Author, Year_Published, IsAvailable, Price, Publication)
VALUES
('The Great Book', 'John Smith', 2000, TRUE, 499.99, 'Penguin'),
('1984', 'George Orwell', 1949, FALSE, 299.50, 'Secker & Warburg'),
('To Kill a Mockingbird', 'Harper Lee', 1960, TRUE, 399.00, 'J.B. Lippincott & Co.'),
('The Alchemist', 'Paulo Coelho', 1988, TRUE, 350.00, 'HarperOne'),
('Pride and Prejudice', 'Jane Austen', 1813, FALSE, 275.00, 'T. Egerton'),
('The Hobbit', 'J.R.R. Tolkien', 1937, TRUE, 450.00, 'George Allen & Unwin'),
('Harry Potter', 'J.K. Rowling', 1997, TRUE, 499.00, 'Bloomsbury'),
('AI for Beginners', 'Emily Smith', 2021, TRUE, 420.00, 'XYZ'),
('Blockchain Basics', 'Ali Raza', 2019, TRUE, 380.00, 'XYZ'),
('Cybersecurity Essentials', 'Nida Khan', 2022, FALSE, 450.00, 'XYZ'),
('Zebra Patterns in Design', 'Hassan Jamil', 2020, TRUE, 510.00, 'XYZ');


SELECT * FROM Books
WHERE year_published > 2000;

SELECT * FROM Books
WHERE price < 599.00
ORDER BY price DESC;


SELECT * FROM Books
ORDER BY price DESC
LIMIT 3;


SELECT * FROM Books
ORDER BY year_published DESC
OFFSET 2
LIMIT 2;

SELECT * FROM Books
WHERE publication = 'XYZ'
ORDER BY title ASC;
