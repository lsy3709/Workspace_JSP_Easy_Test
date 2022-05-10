package com.dao;

import java.util.ArrayList;

import com.dto.Book;

import com.dao.BookRepository;
import com.dto.Book;

public class BookRepository {
	
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	private static BookRepository instance = new BookRepository();

	public static BookRepository getInstance(){
		return instance;
	} 
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
	

	public BookRepository() {
		Book book1 = new Book("book1","bookname1",10000);
		book1.setAuthor("book1 저자");
		book1.setDescription("book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명 book1 설명");
		book1.setPublisher("book1 출판사");
		book1.setCategory("book1 분류");
		book1.setUnitPrice(10000);
		book1.setUnitsInStock(1000);
		book1.setTotalPages(100);
		book1.setReleaseDate("2022년03월");
		book1.setCondition("신규");
		
		Book book2 = new Book("book2","bookname2",20000);
		book2.setAuthor("book2 저자");
		book2.setDescription("book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명 book2 설명");
		book2.setPublisher("book2 출판사");
		book2.setCategory("book2 분류");
		book2.setUnitPrice(20000);
		book2.setUnitsInStock(2000);
		book2.setTotalPages(200);
		book2.setReleaseDate("2022년04월");
		book2.setCondition("신규");
		
		Book book3 = new Book("book3","bookname3",30000);
		book3.setAuthor("book3 저자");
		book3.setDescription("book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명 book3 설명");
		book3.setPublisher("book3 출판사");
		book3.setCategory("book3 분류");
		book3.setUnitPrice(30000);
		book3.setUnitsInStock(3000);
		book3.setTotalPages(300);
		book3.setReleaseDate("2022년05월");
		book3.setCondition("신규");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
	}
	public ArrayList<Book> getAllBooks() {
		return listOfBooks;
	}
	public Book getBookById(String bookId) {
		Book bookById = null;

		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	
}
