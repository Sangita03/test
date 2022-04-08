package com.learning.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.learning.dto.BookDto;
import com.learning.entity.Book;
import com.learning.repository.BookRepo;

@Service
@Transactional
public class BookServiceImpl implements BookService {

	@Autowired
	BookRepo repository;

	@Override
	public String saveBook(BookDto dto) {
		Book entity = new Book();
		BeanUtils.copyProperties(dto, entity); // copying data present in dto to entity
		String message = repository.saveBook(entity); // passing entity to repository level
		return message;

	}

	@Override // fetching list of books
	public List<BookDto> getAllBooks() {
		List<Book> obj = repository.getAllBooks();
		List<BookDto> list = new ArrayList<BookDto>();
		for (Book entity : obj) {
			BookDto dto = new BookDto();
			BeanUtils.copyProperties(entity, dto);
			list.add(dto);

		}
		return list;
	}

	// book details
	@Override
	public BookDto findBookById(int id) {
		BookDto dto = new BookDto();
		Book entity = repository.findBookById(id);
		BeanUtils.copyProperties(entity, dto);
		return dto;
	}

	@Override
	public String deleteBookById(int id) {
		String message = repository.deleteBookById(id);
		return message;
	}

	@Override
	public String updateBook(BookDto dto) {
		Book entity = new Book();
		BeanUtils.copyProperties(dto, entity);
		String message = repository.updateBook(entity);
		return message;
	}

}
