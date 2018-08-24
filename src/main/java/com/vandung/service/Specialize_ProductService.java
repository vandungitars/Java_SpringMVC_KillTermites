package com.vandung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vandung.dao.Specialize_ProductDAO;
import com.vandung.dao.Specialize_ProductDAOImp;
import com.vandung.entity.Products;

@Service
public class Specialize_ProductService implements Specialize_ProductDAOImp{

	@Autowired
	Specialize_ProductDAO specialize_productDAO;
	
	@Override
	public List<Products> getListProductBySpecialize(int idspecialize) {		
		return specialize_productDAO.getListProductBySpecialize(idspecialize);
	}

}
