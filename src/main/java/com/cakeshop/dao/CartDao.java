package com.cakeshop.dao;

import java.sql.ResultSet;

import com.cakeshop.model.Cart;

public interface CartDao {

	public void insertCart(Cart cart);

	public ResultSet viewCart();

	public void deleteCart(String delete);
 
	public ResultSet viewUserCart(int userId);
	


}
