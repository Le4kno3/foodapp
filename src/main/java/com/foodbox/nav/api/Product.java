package com.foodbox.nav.api;

public class Product {	//this is used to print the data from database to frontend.
	private Integer id;
	private String name;
	private String price;
	private String image;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Override
	public String toString() {	//this will show actual values instead of a sql row object identifier.
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", image=" + image + "]";
	}
	
	

}
