package com.vandung.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity(name="NEWS")
public class News {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idnews", nullable=false)
	private int idnews;
	
	@Column(name="title")
	private String title;
		
	@Column(name="image")
	private String image;
	
	@Column(name="content")
	private String content;

	@Column(name="timeupdate")
	private String timeupdate;
	
	@Column(name="describes")
	private String describes;

	public int getIdnews() {
		return idnews;
	}

	public void setIdnews(int idnews) {
		this.idnews = idnews;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTimeupdate() {
		return timeupdate;
	}

	public void setTimeupdate(String timeupdate) {
		this.timeupdate = timeupdate;
	}

	public String getDescribes() {
		return describes;
	}

	public void setDescribes(String describes) {
		this.describes = describes;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}