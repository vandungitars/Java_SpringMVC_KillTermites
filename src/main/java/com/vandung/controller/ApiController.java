package com.vandung.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.vandung.entity.Comment;
import com.vandung.entity.Customer;
import com.vandung.entity.News;
import com.vandung.entity.Products;
import com.vandung.service.CommentService;
import com.vandung.service.CustomerService;
import com.vandung.service.NewsService;
import com.vandung.service.ProductService;


@Controller
@RequestMapping("api/")
public class ApiController {
	
	@Autowired
	NewsService newsService;
	
	@Autowired
	CustomerService customerService;
	
	@Autowired
	CommentService commentService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	ServletContext context;
	
	@GetMapping(path = "changeNews", produces = "text/plain; charset=utf-8")
	@ResponseBody
	public String changeNews(@RequestParam int idnews){
		News news = newsService.getNews(idnews);
		String html = "";
		html += "<h3>" + news.getTitle() + "</h3>";
		html += "<img style=\"width: 100%; height: 400px\" src=\"/dietmoi/resources/Image/" + news.getImage() + "\">";
		html += "<p>" + news.getContent() + "</p>";
		
		return html;
	}
	
	@GetMapping(path = "changeDescribeNews", produces = "text/plain; charset=utf-8")
	@ResponseBody
	public String changeDescribeNews(@RequestParam int idnews){
		News news = newsService.getNews(idnews);		
		String html = "";
		html += "<thead>";
		html += "<tr>";
		html += "<th><p>"+ news.getTitle() +"</p></th>";
		html += "</tr>";
		html += "</thead>";
		html += "<tbody>";
		html += "<tr>";
		html += "<td><img style=\"width: 100px; height: 100px\" src=\"/dietmoi/resources/Image/" + news.getImage() + "\">";
		html += "<p>" + news.getDescribes() + "</p></td>";
		html += "</tr>";
		html += "<tr><td></td><td></td></tr>";
		html += "</tbody>";

		return html;
	}
	
	@PostMapping("getInforCustomer")
	@ResponseBody
	public String getInforCustomer(@RequestParam String dataJson) {
		ObjectMapper objectMapper = new ObjectMapper();
		Customer customer = new Customer();
		String[] checkInfor = new String[5];
		boolean saveInfor = true;
		try {
			JsonNode jsonNode = objectMapper.readTree(dataJson);
			String name = jsonNode.get("namecustomer").asText(); 
			checkInfor[0] = name;
			String phone = jsonNode.get("phonenumber").asText();
			checkInfor[1] = phone;
			String email = jsonNode.get("email").asText();
			checkInfor[2] = email;
			String address= jsonNode.get("address").asText();
			checkInfor[3] = address;
			String specialize = jsonNode.get("specialize").asText();
			checkInfor[4] = specialize;
			for(int i = 0 ; i<checkInfor.length; i++) {
				if(checkInfor[i] == "") {
					saveInfor = false;
				}
			}
			customer.setNamecustomer(name);			
			customer.setPhonenumber(phone);			
			customer.setEmail(email);			
			customer.setAddress(address);			
			customer.setSpecialize(specialize);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		if(saveInfor == true) {
			customerService.saveCustomer(customer);
			return "true";
		}
		return "false";
	}
	
	@PostMapping("getComment")
	@ResponseBody
	public String getComment(@RequestParam String dataJson) {
		ObjectMapper objectMapper = new ObjectMapper();
		Comment comment = new Comment();
		boolean saveComment = true;
		try {
			JsonNode jsonNode = objectMapper.readTree(dataJson);
			String email = jsonNode.get("email").asText();
			String comments = jsonNode.get("comment").asText();
			if(email == "" || comments == "") {
				saveComment = false;
			}
			comment.setEmail(email);
			comment.setComment(comments);
		} catch (IOException e) {
			e.printStackTrace();
		}	
		if(saveComment) {
			commentService.saveComment(comment);
			return "true";
		}		
		return "false";
	}
	
	@GetMapping("deleteProduct")
	@ResponseBody
	public String deleteProduct(@RequestParam int idproduct) {
		productService.deleteProduct(idproduct);
		return null;
	}
	
	@PostMapping("uploadfile")
	@ResponseBody
	public String uploadFile(MultipartHttpServletRequest request)
	{
		String path_save_file = context.getRealPath("/resources/Image/");
		Iterator<String> listNames = request.getFileNames();
		MultipartFile mpf = request.getFile(listNames.next());
		File file_save = new File(path_save_file + mpf.getOriginalFilename());
		try {
			mpf.transferTo(file_save);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	@GetMapping("updateProduct")
	@ResponseBody
	public String updateProduct(@RequestParam int idproduct, @RequestParam String nameproduct, @RequestParam String price, @RequestParam String content) {
		Products product = new Products();
		product.setNameproduct(nameproduct);
		product.setPrice(price);
		product.setContent(content);
		productService.updateProduct(idproduct, product);
		return null;
	}
	
	@PostMapping("addProduct")
	@ResponseBody
	public String addProduct(@RequestParam String  dataJson)
	{
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonObject;
		Products product = new Products();
		try {
			jsonObject = objectMapper.readTree(dataJson);
			product.setNameproduct(jsonObject.get("nameproduct").asText());
			product.setPrice(jsonObject.get("price").asText());
			product.setContent(jsonObject.get("content").asText());
			product.setImage(jsonObject.get("image").asText());
		} catch (Exception e) {
			// TODO: handle exception
		}
		productService.addProduct(product);
		return null;
	}
}