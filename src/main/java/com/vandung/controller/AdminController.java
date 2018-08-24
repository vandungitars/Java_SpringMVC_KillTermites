package com.vandung.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vandung.entity.Products;
import com.vandung.service.ProductService;

@Controller
@RequestMapping("dashboard/")
public class AdminController {
	
	@Autowired
	ProductService productService;
	
	@GetMapping
	public String Default(ModelMap modelmap) {
		List<Products> listProducts = productService.getListProduct();	
		modelmap.addAttribute("listProducts", listProducts);
		return "admin";
	}
}
