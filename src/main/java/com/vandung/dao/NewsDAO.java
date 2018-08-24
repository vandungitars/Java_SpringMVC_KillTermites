package com.vandung.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vandung.entity.News;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NewsDAO implements NewsDAOImp{

	@Autowired
	SessionFactory mySessionFactory;
	
	@Override
	@Transactional
	public List<News> getListNews() {
		Session session = mySessionFactory.getCurrentSession();
		List<News> listNews = session.createQuery("from NEWS").getResultList();
		return listNews;
	}

	@Override
	@Transactional
	public News getNews(int idnews) {
		Session session = mySessionFactory.getCurrentSession();
		News news = (News) session.createQuery("from NEWS where idnews=" + idnews).getSingleResult();
		return news;
	}

}
