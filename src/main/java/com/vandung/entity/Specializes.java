package com.vandung.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name="SPECIALIZES")
public class Specializes {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idspecialize", nullable=false)
	private int idspecialize;
	
	@Column(name="namespecialize")
	private String namespecialize;
	
	@Column(name="content")
	private String content;
	
	@Column(name="image")
	private String image;

	@OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="idspecialize")
	Set<Specialize_Product> specialize_product;

	public int getIdspecialize() {
		return idspecialize;
	}

	public void setIdspecialize(int idspecialize) {
		this.idspecialize = idspecialize;
	}

	public String getNamespecialize() {
		return namespecialize;
	}

	public void setNamespecialize(String namespecialize) {
		this.namespecialize = namespecialize;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Set<Specialize_Product> getSpecialize_product() {
		return specialize_product;
	}

	public void setSpecialize_product(Set<Specialize_Product> specialize_product) {
		this.specialize_product = specialize_product;
	}
	
}
