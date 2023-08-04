# Library Database Project
## Introduction

The Library Database Project is a simple implementation of a library management system using SQL. It provides a structured database schema to manage a library's book collection and the authors of those books. The project aims to demonstrate the fundamental concepts of working with relational databases and SQL queries.

## Database Schema

The database schema includes two tables: "Books" and "Authors," which are related to each other using a one-to-many relationship. Here's an overview of the schema:

### Authors

| Column   | Data Type    | Description                         |
| -------- | ------------ | ----------------------------------- |
| AuthorID | INT (PK)     | Unique identifier for the author    |
| AuthorName | VARCHAR(100) | Name of the author                  |

### Books

| Column        | Data Type    | Description                           |
| ------------- | ------------ | ------------------------------------- |
| BookID        | INT (PK)     | Unique identifier for the book        |
| BookTitle     | VARCHAR(200) | Title of the book                     |
| PublicationYear | INT        | Year the book was published           |
| AuthorID      | INT (FK)     | Foreign key referencing Authors.AuthorID |

## Sample Data

The database comes pre-populated with sample data for both the "Authors" and "Books" tables. The sample data includes a variety of books from different authors, allowing you to explore the functionality of the database.

## SQL Queries

Several SQL queries have been provided to demonstrate the use of the database. These queries allow you to:

1. Retrieve all books and their authors.
2. Retrieve books published after the year 1950.
3. Count the number of books written by each author.
4. Find the author with the most books in the collection.

## Getting Started

To get started with the Library Database Project, follow these steps:

1. Clone this repository to your local machine.
2. Set up an SQL database management system (e.g., MySQL, PostgreSQL, SQL Server).
3. Create a new database named "Library."
4. Execute the SQL code in the "database_setup.sql" file to create the necessary tables.
5. Execute the SQL code in the "sample_data.sql" file to populate the tables with sample data.
6. Use an SQL client or interface to run the provided SQL queries against the database.

## Prerequisites

To run this project, you need the following:

- An SQL database management system (e.g., MySQL, PostgreSQL, SQL Server).
- An SQL client or interface to execute the SQL queries.

## Authors

- [Abul Hossain Khan](https://github.com/abulgit)

## Acknowledgments

- This project serves as an educational example of working with SQL databases and basic database design.
- Feel free to expand on this project and add more features to make it more comprehensive.
