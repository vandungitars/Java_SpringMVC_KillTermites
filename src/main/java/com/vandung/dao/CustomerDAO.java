package com.vandung.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.vandung.entity.Customer;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CustomerDAO implements CustomerDAOImp{

	@Autowired
	SessionFactory mySessionFactory;
	
	@Override
	@Transactional
	public int saveCustomer(Customer customer) {
		Session session = mySessionFactory.getCurrentSession();
		session.save(customer);
		return 0;
	}

}
