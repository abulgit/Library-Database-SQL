-- Create the Library database
CREATE DATABASE Library;
-- Switch to the Library database
USE Library;

-- Create the Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);