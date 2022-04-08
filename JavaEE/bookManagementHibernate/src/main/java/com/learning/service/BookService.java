package com.learning.service;

import java.util.List;

import com.learning.dto.BookDto;

public interface BookService {
	
	public String saveBook(BookDto dto);
	public List<BookDto> getAllBooks();
	public BookDto findBookById(int id);
	public String deleteBookById(int id);
	public String updateBook(BookDto dto);

}
