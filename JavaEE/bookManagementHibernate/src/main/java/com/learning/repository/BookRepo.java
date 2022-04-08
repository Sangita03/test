package com.learning.repository;

import java.util.List;

import com.learning.entity.Book;

public interface BookRepo {
	
	public  String saveBook(Book entity);
	public List<Book> getAllBooks();
	public Book findBookById(int id);
	public String deleteBookById(int id);
	public  String updateBook(Book entity);
	
	
	

}
