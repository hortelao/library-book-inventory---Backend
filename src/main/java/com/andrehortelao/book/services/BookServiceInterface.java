package com.andrehortelao.book.services;

import com.andrehortelao.book.model.Book;

import java.util.List;
import java.util.Optional;

public interface BookServiceInterface {
    public List<Book> findAll();

    public Optional<Book> findById(Long id);

    public Book save(Book book);

    public Book updateBook(Long id, Book bookDetails);

    public void deleteById(Long id);
}
