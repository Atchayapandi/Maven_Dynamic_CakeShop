package com.cakeshop.dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.dao.CartDao;
import com.cakeshop.dao.ProductDao;
import com.cakeshop.model.Cart;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;

public class CartDaoImpl implements CartDao {

	public void insertCart(Cart cart) {
		

		String insert = "INSERT INTO CART_ITEMS (CAKE_ID,USER_ID,ORDER_QUANTITY,TOTAL_PRICE,order_date) VALUES(?,?,?,?,?) ";

		ConnectionUtil conUtil = new ConnectionUtil();
		Connection con = conUtil.getDbConnection();
		PreparedStatement pst = null;

		try {
			System.out.println(cart.getProductId()+cart.getUserId()+cart.getQuantity()+cart.getTotalPrice());
			pst = con.prepareStatement(insert);
			pst.setInt(1, cart.getProductId());
			pst.setInt(2, cart.getUserId());
			pst.setInt(3, cart.getQuantity());
			pst.setDouble(4, cart.getTotalPrice());
			pst.setDate(5, java.sql.Date.valueOf(cart.getOrderDate()));
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("Value not inserted in the table");
		}

	}
	
public boolean insertCart1(Cart cart) {
		

		String insert = "INSERT INTO CART_ITEMS (CAKE_ID,USER_ID,ORDER_QUANTITY,TOTAL_PRICE,order_date) VALUES(?,?,?,?,?) ";

		ConnectionUtil conUtil = new ConnectionUtil();
		Connection con = conUtil.getDbConnection();
		PreparedStatement pst = null;

		try {
			
			pst = con.prepareStatement(insert);
			pst.setInt(1, cart.getProductId());
			pst.setInt(2, cart.getUserId());
			pst.setInt(3, cart.getQuantity());
			pst.setDouble(4, cart.getTotalPrice());
			pst.setDate(5, java.sql.Date.valueOf(cart.getOrderDate()));
			pst.executeUpdate();
			return true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("Value not inserted in the table");
		}
		return false;

	}
	
		

//view cart items

	public  ResultSet viewCart() {	
		
		
		String query = "select * from cart_items";
		Connection con = ConnectionUtil.getDbConnection();	
			
		ResultSet rs=null;
		
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(query);
					
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return rs;
	}

	

	// delete cart

	public  void deleteCart(String delete)  {
		String deleteQuery = "delete from cart_items where cart_id=?";

		try {
		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement pstmt = con.prepareStatement(deleteQuery);
		pstmt.setInt(1, Integer.parseInt(delete));
		int i = pstmt.executeUpdate();
		System.out.println(i + "row deleted");
		pstmt.close();
		con.close();
		}
		catch(SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
	}


	public ResultSet viewUserCart(int userId) {
		String query = "select Email_id,cake_name,order_quantity,Total_price,Order_date from cart_items inner join user_details using (user_id) inner join product_details using(cake_id) where user_id=?";
		
		Connection con=ConnectionUtil.getDbConnection();
		PreparedStatement stmt;
		
		ResultSet rs=null;
		try {
			stmt=con.prepareStatement(query);
			System.out.println(userId);
			stmt.setInt(1,userId) ;
			
			rs=stmt.executeQuery();	
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return rs;
		
	}

	
}	

	
	
	
	
	
			




