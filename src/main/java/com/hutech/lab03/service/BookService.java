package com.hutech.lab03.service;

import com.hutech.lab03.model.Book;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.atomic.AtomicLong;

@Service
public class BookService {
    private final List<Book> books = new ArrayList<>();
    private final AtomicLong idGen = new AtomicLong(1);

    public BookService() {
        // sample data
        books.add(new Book(idGen.getAndIncrement(), "Clean Code", "Robert C. Martin"));
        books.add(new Book(idGen.getAndIncrement(), "Effective Java", "Joshua Bloch"));
    }

    public List<Book> findAll() {
        return new ArrayList<>(books);
    }

    public Book save(Book b) {
        if (b.getId() == null) {
            b.setId(idGen.getAndIncrement());
            books.add(b);
            return b;
        } else {
            for (int i = 0; i < books.size(); i++) {
                if (books.get(i).getId().equals(b.getId())) {
                    books.set(i, b);
                    return b;
                }
            }
            // if not found, treat as new
            books.add(b);
            return b;
        }
    }

    public Optional<Book> findById(Long id) {
        return books.stream().filter(b -> b.getId().equals(id)).findFirst();
    }

    public void deleteById(Long id) {
        books.removeIf(b -> b.getId().equals(id));
    }
}