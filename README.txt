# Library Management System

This is a simple web application for managing a library's book inventory. The application allows users to add, view, update, and delete books from the inventory. The backend is developed using Java, Spring Boot, and Hibernate, with data stored in a MySQL database. The application exposes RESTful APIs for performing CRUD operations on the book inventory.


## Features

- Add new books to the inventory
- View a list of all books
- Update details of an existing book
- Delete a book from the inventory

## Data Requirements

The application manages books with the following data:
- Id
- Title
- Author
- ISBN
- Published date
- Price

## API Endpoints

- `GET /api/books` - Retrieve a list of all books
- `GET /api/books/{id}` - Retrieve details of a specific book by ID
- `POST /api/books` - Add a new book
- `PUT /api/books/{id}` - Update an existing book by ID
- `DELETE /api/books/{id}` - Delete a book by ID

## Getting Started

### Prerequisites

- Java Development Kit (JDK) 8 or higher
- Maven
- MySQL

### Installation

1. Clone the repository:
    git clone https://github.com/yourusername/library-management-system.git
    cd library-management-system


2. Update MySQL configuration in `src/main/resources/application.properties`:
    ```properties
    spring.datasource.url=jdbc:mysql://localhost:3306/library_db
    spring.datasource.username=root
    spring.datasource.password=yourpassword
    spring.jpa.hibernate.ddl-auto=update
    spring.jpa.show-sql=true
    spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect
    ```

### Running the Application

1. Build the project using Maven:
    ```sh
    ./mvnw clean package
    ```

2. Run the Spring Boot application:
    ```sh
    ./mvnw spring-boot:run
    ```

3. The application will start and be accessible at `http://localhost:8080`.

## Database Setup

1. Create the MySQL database:
    ```sql
    CREATE DATABASE library_db;
    ```

2. Run the seed script to populate the database with sample data:
    ```sql
    -- Create the Book table
    CREATE TABLE IF NOT EXISTS Book (
        id BIGINT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        author VARCHAR(255) NOT NULL,
        isbn VARCHAR(20) NOT NULL,
        published_date DATE NOT NULL,
        price DOUBLE NOT NULL,
        version BIGINT
    );

    -- Insert sample data into the Book table
    INSERT INTO Book (title, author, isbn, published_date, price, version) VALUES
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
    ```


## Technologies Used

- Java
- Spring Boot
- Hibernate
- MySQL
- Docker

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
