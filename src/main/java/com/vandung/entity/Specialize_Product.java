package com.vandung.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name="SPECIALIZE_PRODUCT")
public class Specialize_Product {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idspecialize_product", nullable=false)
	private int idspecialize_product;
	
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="idproduct")
	private Products product;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="idspecialize")
	Specializes specialize;

	public int getIdspecialize_product() {
		return idspecialize_product;
	}

	public void setIdspecialize_product(int idspecialize_product) {
		this.idspecialize_product = idspecialize_product;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	public Specializes getSpecialize() {
		return specialize;
	}

	public void setSpecialize(Specializes specialize) {
		this.specialize = specialize;
	}
	
}
