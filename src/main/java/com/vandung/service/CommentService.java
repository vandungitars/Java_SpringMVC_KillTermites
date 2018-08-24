package com.vandung.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vandung.dao.CommentDAO;
import com.vandung.dao.CommentDAOImp;
import com.vandung.entity.Comment;

@Service
public class CommentService implements CommentDAOImp{
	
	@Autowired
	CommentDAO commentDAO;
	
	@Override
	public int saveComment(Comment comment) {
		commentDAO.saveComment(comment);
		return 0;
	}
}
