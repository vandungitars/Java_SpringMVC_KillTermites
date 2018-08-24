package com.vandung.dao;

import java.util.List;

import com.vandung.entity.Products;

public interface ProductDAOImp {

	List<Products> getListProduct();
	int deleteProduct(int idproduct);
	int updateProduct(int idproduct, Products product);
	int addProduct(Products product);
}
