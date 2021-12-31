package com.cakeshop.model;

import java.util.Objects;

public class User1 {
	private String userName;
	private String EmailId;
	private String password;
	private String address;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailId() {
		return EmailId;
	}

	public void setEmailId(String emailId) {
		EmailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public User1(String userName, String emailId, String password, String address) {
		super();
		this.userName = userName;
		EmailId = emailId;
		this.password = password;
		this.address = address;
	}

	@Override
	public String toString() {
		return "User1 [userName=" + userName + ", EmailId=" + EmailId + ", password=" + password + ", address="
				+ address + "]";
	}

	public User1() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}