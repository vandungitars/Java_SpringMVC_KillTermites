package com.vandung.dao;

import java.util.List;

import com.vandung.entity.Products;

public interface Specialize_ProductDAOImp {
	List<Products> getListProductBySpecialize(int idspecialize);
}
