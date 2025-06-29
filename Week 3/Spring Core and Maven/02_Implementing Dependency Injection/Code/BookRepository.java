package com.library.repository;

public class BookRepository {
    public String getBookById(int id) {
        return "Book#" + id + ": The Spring Journey";
    }
}
