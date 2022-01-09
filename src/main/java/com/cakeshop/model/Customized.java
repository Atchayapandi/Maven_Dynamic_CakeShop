package com.cakeshop.model;

public class Customized {

	private String flavour;
	private String type;
	private String shape;
	private int quantity;
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getFlavour() {
		return flavour;
	}
	public void setFlavour(String flavour) {
		this.flavour = flavour;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getShape() {
		return shape;
	}
	public void setShape(String shape) {
		this.shape = shape;
	}
	public Customized(String flavour, String type, String shape ,int quantity) {
		super();
		this.flavour = flavour;
		this.type = type;
		this.shape = shape;
		this.quantity=quantity;
	}
	public Customized() {
		super();
		// TODO Auto-generated constructor stub
	}
	
		
	
}
