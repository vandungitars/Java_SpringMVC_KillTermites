package com.vandung.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vandung.entity.Specializes;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SpecializeDAO implements SpecializeDAOImp{

	@Autowired
	SessionFactory mySessionFactory;
	
	@Override
	@Transactional
	public Specializes getSpecializeByID(int idSpecialize) {
		Session session = mySessionFactory.getCurrentSession();
		Specializes specialize = (Specializes) session.createQuery("from SPECIALIZES where idspecialize=" + idSpecialize).getSingleResult();
		return specialize;
	}

}
