package com.vandung.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("lienhe/")
public class ContactController {
	
	@GetMapping
	public String Default() {
		return "contact";
	}
}
