package com.vandung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vandung.dao.ProductDAO;
import com.vandung.dao.ProductDAOImp;
import com.vandung.entity.Products;

@Service
public class ProductService implements ProductDAOImp{

	@Autowired
	ProductDAO productDAO;
	
	@Override
	public List<Products> getListProduct() {
		return productDAO.getListProduct();
	}

	@Override
	public int deleteProduct(int idproduct) {
		productDAO.deleteProduct(idproduct);
		return 0;
	}

	@Override
	public int updateProduct(int idproduct, Products product) {
		productDAO.updateProduct(idproduct, product);
		return 0;
	}

	@Override
	public int addProduct(Products product) {
		productDAO.addProduct(product);
		return 0;
	}	
}
