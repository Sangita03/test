package com.learning.repository;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.learning.entity.Book;



@Repository
public class BookRepository implements BookRepo{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	//to create book table
	public String saveBook(Book entity) {
		getSession().save(entity); //saving all data present in entity to the database
		return "Book has been created sucessfully ";
	}

	@Override
	public List<Book> getAllBooks() {
		List<Book> book = getSession().createQuery("from Book", Book.class).getResultList();
		return book;
	}

	@Override
	public Book findBookById(int id) {
		TypedQuery<Book> query = getSession().createQuery("from Book b where b.id=:bookId");
		query.setParameter("bookId", id);
		Book entity = query.getSingleResult();
		return entity;
		
	}

	@Override
	public String deleteBookById(int id) {
		Book entity = findBookById(id);
		getSession().delete(entity);
		return "Book deleted successfully";
	}

	@Override
	public String updateBook(Book entity) {
		getSession().merge(entity);
		return "Book updated successfully";
	}

	
}
