package com.vandung.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vandung.dao.SpecializeDAO;
import com.vandung.dao.SpecializeDAOImp;
import com.vandung.entity.Specializes;

@Service
public class SpecializeService implements SpecializeDAOImp{

	@Autowired
	SpecializeDAO specializeDAO;
	
	@Override
	public Specializes getSpecializeByID(int idSpecialize) {
		return specializeDAO.getSpecializeByID(idSpecialize);
	}

}
