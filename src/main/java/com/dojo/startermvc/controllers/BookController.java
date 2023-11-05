package com.dojo.startermvc.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dojo.startermvc.models.Book;
import com.dojo.startermvc.services.BookService;


@Controller
public class BookController {

    private final BookService bookService;
	
    public BookController(BookService bookService){ // le BookService l'objet est injecté dans le BookController class via le constructeur. 
        this.bookService = bookService;
    }

    @RequestMapping("/books")
    public String index(Model model) {
        List<Book> books = bookService.allBooks();
        model.addAttribute("books", books);
        return "index.jsp";
    }

    @RequestMapping("/books/{id}")
    public String show_book(@PathVariable("id") Long id, 
                            Model model) {
    	//System.out.println("id : "+ id);
        Book book = bookService.findBook(id);
        model.addAttribute("book", book);
    	return "show.jsp";
    }
}
