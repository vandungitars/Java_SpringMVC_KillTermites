package com.vandung.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.vandung.entity.Comment;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class CommentDAO implements CommentDAOImp{

	@Autowired
	SessionFactory mySessionFactory;
	
	@Override
	@Transactional()
	public int saveComment(Comment comment) {
		Session session = mySessionFactory.getCurrentSession();
		session.save(comment);
		return 0;
	}

}
