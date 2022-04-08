package com.learning.dto;

public class BookDto {
	private String name;
	private String author;
	private int id;
	private String publication;
	private String reserved;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublication() {
		return publication;
	}
	public void setPublication(String publication) {
		this.publication = publication;
	}
	public String getReserved() {
		return reserved;
	}
	public void setReserved(String reserved) {
		this.reserved = reserved;
	}
	
	
	@Override
	public String toString() {
		return "BookDto [name=" + name + ", author=" + author + ", id=" + id + ", publication=" + publication
				+ ", reserved=" + reserved + "]";
	}
	
	

}
