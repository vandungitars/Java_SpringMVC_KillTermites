package com.vandung.dao;

import java.util.ArrayList;
import java.util.List;

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
public class Specialize_ProductDAO implements Specialize_ProductDAOImp{

	@Autowired
	SessionFactory mySessionFactory;
	
	@Override
	@Transactional
	public List<Products> getListProductBySpecialize(int idspecialize) {
		Session session = mySessionFactory.getCurrentSession();
		List<Specialize_Product> listSpecialize_Product = session.createQuery("from SPECIALIZE_PRODUCT where idspecialize=" + idspecialize).getResultList();
		List<Products> listProducts = new ArrayList<Products>();
		listSpecialize_Product.forEach((product) -> {
			listProducts.add(product.getProduct());
		});
		return listProducts;
	}
}
