package com.vandung.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vandung.dao.NewsDAO;
import com.vandung.dao.NewsDAOImp;
import com.vandung.entity.News;

@Service
public class NewsService implements NewsDAOImp{

	@Autowired
	NewsDAO newsDAO;
	
	@Override
	public List<News> getListNews() {		
		return newsDAO.getListNews();
	}

	@Override
	public News getNews(int idnews) {
		return newsDAO.getNews(idnews);
	}

}
