-- Create the Library database
CREATE DATABASE Library;
-- Switch to the Library database
USE Library;

-- Create the Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);
-- Insert some sample authors
INSERT INTO Authors (AuthorID, AuthorName)
VALUES
    (1, 'J.K. Rowling'),
    (2, 'George Orwell'),
    (3, 'Agatha Christie');
    SELECT * FROM Authors;

-- Create the Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    BookTitle VARCHAR(200) NOT NULL,
    PublicationYear INT,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);
-- Insert some sample books
INSERT INTO Books (BookID, BookTitle, PublicationYear, AuthorID)
VALUES
    (5, 'Pride and Prejudice', 1813, 4),
    (6, 'The Adventures of Huckleberry Finn', 1884, 5),
    (7, 'War and Peace', 1869, 6),
    (8, 'Sense and Sensibility', 1811, 4),
    (9, 'The Adventures of Tom Sawyer', 1876, 5);
    -- Retrieve all books and their authors
SELECT b.BookTitle, a.AuthorName
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID;

-- Retrieve books published after the year 1950
SELECT BookTitle, PublicationYear
FROM Books
WHERE PublicationYear > 1950;

-- Count the number of books written by each author
SELECT a.AuthorName, COUNT(b.BookID) AS NumBooks
FROM Authors a
LEFT JOIN Books b ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorName;

-- Find the author with the most books
SELECT a.AuthorName, COUNT(b.BookID) AS NumBooks
FROM Authors a
LEFT JOIN Books b ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorName
ORDER BY NumBooks DESC
LIMIT 1;
