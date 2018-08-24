package com.vandung.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vandung.entity.Products;
import com.vandung.entity.Specialize_Product;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class ProductDAO implements ProductDAOImp{

	@Autowired
	SessionFactory mySessionFactory;

	@Override
	@Transactional
	public List<Products> getListProduct() {
		Session session = mySessionFactory.getCurrentSession();
		List<Products> listProduct = session.createQuery("from PRODUCTS").getResultList();
		return listProduct;
	}

	@Override
	@Transactional
	public int deleteProduct(int idproduct) {
		Session session = mySessionFactory.getCurrentSession();
		Products product = session.get(Products.class, idproduct);
		Set<Specialize_Product> specialize_product = product.getSpecialize_product();
		specialize_product.forEach((sp) -> {
			session.createQuery("delete SPECIALIZE_PRODUCT WHERE idspecialize_product="+sp.getIdspecialize_product()).executeUpdate();		
		});	
		session.createQuery("delete PRODUCTS WHERE idproduct="+idproduct).executeUpdate();
		return 0;
	}

	@Override
	@Transactional
	public int updateProduct(int idproduct, Products product) {
		Session session = mySessionFactory.getCurrentSession();
		Products productDB = (Products) session.createQuery("from PRODUCTS WHERE idproduct="+idproduct).getSingleResult();
		productDB.setNameproduct(product.getNameproduct());
		productDB.setPrice(product.getPrice());
		productDB.setContent(product.getContent());
		session.update(productDB);
		return 0;
	}

	@Override
	@Transactional
	public int addProduct(Products product) {
		Session session = mySessionFactory.getCurrentSession();
		session.save(product);
		return 0;
	}
}
