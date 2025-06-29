package com.library.service;

import com.library.repository.BookRepository;

public class BookService {
    private BookRepository bookRepository;

    public void setBookRepository(BookRepository bookRepository) {
        System.out.println("BookRepository injected via setter");
        this.bookRepository = bookRepository;
    }

    public void showBook(int id) {
        String book = bookRepository.getBookById(id);
        System.out.println("BookService retrieved: " + book);
    }
}
