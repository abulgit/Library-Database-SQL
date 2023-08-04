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
    (1, 'Harry Potter and the Sorcerer\s' Stone', 1997, 1),
    (2, '1984', 1949, 2),
    (3, 'Murder on the Orient Express', 1934, 3),
    (4, 'Harry Potter and the Chamber of Secrets', 1998, 1);
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
