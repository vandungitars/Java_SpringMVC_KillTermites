package com.vandung.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vandung.dao.CustomerDAO;
import com.vandung.dao.CustomerDAOImp;
import com.vandung.entity.Customer;

@Service
public class CustomerService implements CustomerDAOImp{

	@Autowired
	CustomerDAO customerDAO;
	
	@Override
	public int saveCustomer(Customer customer) {
		customerDAO.saveCustomer(customer);
		return 0;
	}

}
