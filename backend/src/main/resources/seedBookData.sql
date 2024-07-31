CREATE DATABASE IF NOT EXISTS books;

USE books;

-- Create the Book table
CREATE TABLE IF NOT EXISTS book (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20) NOT NULL,
    published_date DATE NOT NULL,
    price DOUBLE NOT NULL,
    version BIGINT
);

-- Insert sample data into the Book table
INSERT INTO book (title, author, isbn, published_date, price, version) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', '1925-04-10', 10.99, 0),
('To Kill a Mockingbird', 'Harper Lee', '9780060935467', '1960-07-11', 7.99, 0),
('1984', 'George Orwell', '9780451524935', '1949-06-08', 8.99, 0),
('Pride and Prejudice', 'Jane Austen', '9781503290563', '1813-01-28', 9.99, 0),
('The Catcher in the Rye', 'J.D. Salinger', '9780316769488', '1951-07-16', 6.99, 0),
('The Hobbit', 'J.R.R. Tolkien', '9780547928227', '1937-09-21', 8.99, 0),
('Fahrenheit 451', 'Ray Bradbury', '9781451673319', '1953-10-19', 7.99, 0),
('Moby-Dick', 'Herman Melville', '9781503280786', '1851-10-18', 11.99, 0),
('War and Peace', 'Leo Tolstoy', '9780199232765', '1869-01-01', 12.99, 0),
('Crime and Punishment', 'Fyodor Dostoevsky', '9780486415871', '1866-01-01', 9.99, 0);