package com.elsevier.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elsevier.models.Book;
import com.elsevier.repositories.BookRepository;

@Service
public class BookService {
	
	@Autowired
	private BookRepository bookRepository;
	
	public Iterable<Book> findAllBooks()
	{
		return bookRepository.findAll();
		
	}

}
