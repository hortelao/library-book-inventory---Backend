package com.andrehortelao.book.services;

import com.andrehortelao.book.model.Book;
import com.andrehortelao.book.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService implements BookServiceInterface{
    @Autowired
    private BookRepository bookRepository;

    public List<Book> findAll() {
        return bookRepository.findAll();
    }

    public Optional<Book> findById(Long id) {
        return bookRepository.findById(id);
    }

    public Book save(Book book) {
        return bookRepository.save(book);
    }

    public Book updateBook(Long id, Book bookDetails) {
        Book book = bookRepository.findById(id).orElse(null);
        if(book != null) {
          book.setTitle(bookDetails.getTitle());
          book.setAuthor(bookDetails.getAuthor());
          book.setIsbn(bookDetails.getIsbn());
          book.setPrice(bookDetails.getPrice());
          book.setPublishedDate(bookDetails.getPublishedDate());
          return bookRepository.save(book);
        }
        return null;
    }

    public void deleteById(Long id) {
        bookRepository.deleteById(id);
    }
}
