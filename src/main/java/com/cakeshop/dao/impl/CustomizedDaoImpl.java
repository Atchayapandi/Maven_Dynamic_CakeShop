package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cakeshop.model.Customized;
import com.cakeshop.model.User1;

public class CustomizedDaoImpl {

	
	public void insertCake(Customized cake) {
		String insertQuery = "insert into customized_details(flavour,types,shape,quantity) values(?,?,?,?)";
		 
		PreparedStatement pst = null;
		try {
			
			ConnectionUtil conUtil = new ConnectionUtil();
			Connection con = conUtil.getDbConnection();
			 
			 pst = con.prepareStatement(insertQuery);
				pst.setString(1, cake.getFlavour());
				pst.setString(2, cake.getType());
				pst.setString(3, cake.getShape());	
				pst.setInt(4, cake.getQuantity());
				pst.executeUpdate();
				
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
}
 
	public ResultSet viewCustomizedCart(int userId) {
		String query = "select Email_id,quantity,Order_date,flavour,types,shape,(quantity*initial_amount)as total_price from customized_details inner join user_details using (user_id) where user_id=? order by order_date desc";
		Connection con=ConnectionUtil.getDbConnection();
		PreparedStatement stmt;		
		ResultSet rs=null;
		try {
			stmt=con.prepareStatement(query);			
			stmt.setInt(1,userId) ;			
			rs=stmt.executeQuery();	
			return rs;
		} catch (SQLException e) {			
			e.printStackTrace();
		}		
		return rs;		
	}
	
	

	
}
