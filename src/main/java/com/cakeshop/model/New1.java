package com.cakeshop.model;

public class New1 {
	private String name;
	private String pass;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public New1(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "New1 [name=" + name + ", pass=" + pass + "]";
	}
	public New1() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
