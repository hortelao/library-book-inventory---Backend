package com.andrehortelao.book.repository;

import com.andrehortelao.book.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {
}
