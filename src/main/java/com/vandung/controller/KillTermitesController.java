package com.vandung.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vandung.entity.News;
import com.vandung.entity.Specializes;
import com.vandung.entity.Products;
import com.vandung.service.NewsService;
import com.vandung.service.SpecializeService;
import com.vandung.service.Specialize_ProductService;
import com.vandung.service.ProductService;

@Controller
@RequestMapping("dichvu/")
public class KillTermitesController {
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	SpecializeService specializesService;
	
	@Autowired
	Specialize_ProductService specialize_productService;
	
	@GetMapping("/{idspecialize}")
	public String Default(@PathVariable String idspecialize, ModelMap modelmap){
		int idSpecialize = Integer.parseInt(idspecialize);
		List<News> listNews = newsService.getListNews();
		List<Products> listProducts = specialize_productService.getListProductBySpecialize(idSpecialize);
		Specializes specialize = specializesService.getSpecializeByID(idSpecialize);
		modelmap.addAttribute("specialize", specialize);
		modelmap.addAttribute("listNews", listNews);
		modelmap.addAttribute("listProducts", listProducts);
		return "killtermites";
	}
}
