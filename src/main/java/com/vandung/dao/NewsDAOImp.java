package com.vandung.dao;

import java.util.List;

import com.vandung.entity.News;

public interface NewsDAOImp {

	List<News> getListNews();
	News getNews(int idnews);
}
