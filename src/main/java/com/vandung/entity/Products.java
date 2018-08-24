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

@Entity(name="PRODUCTS")
public class Products {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idproduct",nullable=false)
	private int idproduct;
	
	@Column(name="nameproduct")
	private String nameproduct;
	
	@Column(name="price")
	private String price;
	
	@Column(name="content")
	private String content;
	
	@Column(name="image")
	private String image;
	
	@OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinColumn(name="idproduct")
	Set<Specialize_Product> specialize_product;

	public int getIdproduct() {
		return idproduct;
	}

	public void setIdproduct(int idproduct) {
		this.idproduct = idproduct;
	}

	public String getNameproduct() {
		return nameproduct;
	}

	public void setNameproduct(String nameproduct) {
		this.nameproduct = nameproduct;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
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
