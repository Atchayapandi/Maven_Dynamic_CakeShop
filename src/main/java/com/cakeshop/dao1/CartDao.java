package com.cakeshop.dao1;

import java.sql.ResultSet;

import com.cakeshop.model.Cart;

public interface CartDao {

	public void insertCart(Cart cart);

	public ResultSet viewCart();

	public void updateCart(String updateCart);

	public void deleteCart(String delete);

	public int findCartId(int cart);

	public int walletbal(int id);

	public int updatewallet(int amount, int userid);

}
