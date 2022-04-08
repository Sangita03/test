package com.learning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.learning.dto.BookDto;
import com.learning.service.BookService;

@Controller
public class BookController {
	@Autowired
	BookService service;

	@GetMapping("/addBook") // jsp file to enter book data
	public String createBook() {
		return "createBook";
	}

	@PostMapping("/saveBook") // passing data to controller and also to the service layer
	public String saveBook(@ModelAttribute BookDto dto, Model model) {
		String message = service.saveBook(dto);
		model.addAttribute("message", message);
		return "createBook"; // forwarding message to the mentioned jsp file

	}

	@GetMapping("/getAllBooks")
	public String allBooks(Model model) {
		List<BookDto> list = service.getAllBooks();
		model.addAttribute("bookList", list);
		return "allBooks";
	}

	@GetMapping("/bookDetails")
	public String bookDetails(@RequestParam int id, Model model) {
		BookDto info = service.findBookById(id);
		model.addAttribute("details", info);
		return "bookInfo";
	}

	@GetMapping("/deleteBook")
	public String deleteBook(@RequestParam int id, Model model) {
		String message = service.deleteBookById(id);
		model.addAttribute("message", message);
		return "redirect:getAllBooks";
	}

	@GetMapping("/editBook")
	public String editUser(@RequestParam int id,Model model) {
	BookDto book = service.findBookById(id);
		model.addAttribute("updatedData", book);
		return "editBook"; //forwarding to jsp file
	}

	@PostMapping("/updateBook")
	public String updateUser(@ModelAttribute BookDto dto, Model model) {
		String message = service.updateBook(dto);
		model.addAttribute("message", message);
		return "editBook"; // forwarding to jsp file 
	}
	@RequestMapping("/home")
	public String displayhome() {
		System.out.println("This is Home");
		return "home";
	}

}
