package com.vandung.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vandung.entity.News;
import com.vandung.entity.Specializes;
import com.vandung.entity.Products;
import com.vandung.service.NewsService;
import com.vandung.service.SpecializeService;
import com.vandung.service.ProductService;

@Controller
@RequestMapping("/")
public class HomePageController {
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	ProductService productService;
	
	@GetMapping
	public String Default(ModelMap modelmap){
		
		List<News> listNews = newsService.getListNews();
		List<Products> listProducts = productService.getListProduct();	
		modelmap.addAttribute("listNews", listNews);
		modelmap.addAttribute("listProducts", listProducts);
		return "homepage";
	}
}
















































