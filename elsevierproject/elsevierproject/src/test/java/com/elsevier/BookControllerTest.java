package com.elsevier;

import static org.junit.Assert.*;
import java.util.ArrayList;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.elsevier.controllers.BookController;
import com.elsevier.models.Book;

public class BookControllerTest {

	private Iterable<Book> books;
	private int bookId;
	private ArrayList<Book> cartItems;
	private BookController bookController;

	@Test
	public void testIntitalCartIsEmpty() {
		books = new ArrayList<Book>();
		bookId = 1;
		cartItems = new ArrayList<Book>();
		bookController = new BookController();
		Assert.assertTrue(cartItems.isEmpty());
	}

	@Test
	public void testAddToCart() {
		books = new ArrayList<Book>();
		bookId = 1;
		cartItems = new ArrayList<Book>();
		bookController = new BookController();
		ModelAndView mav = bookController.addToCart(books, bookId, cartItems);
		Assert.assertFalse(cartItems.isEmpty());
	}
}
