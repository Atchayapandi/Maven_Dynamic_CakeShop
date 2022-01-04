package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cakeshop.dao1.WalletDao;

public class WalletDaoImpl implements WalletDao{

	//get wallet balance:
	public int walletbal(int userId) 
	{
		String query = "select user_wallet from user_details where user_id = ?";
		Connection con=ConnectionUtil.getDbConnection();
		Statement stmt;
		int user_wallet=0;		
		try {
		stmt=con.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		if(rs.next()) {
				user_wallet=rs.getInt(1);
		}}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user_wallet;
		
	}

//update wallet balance:
	public void updatewallet(double amount,int userid){
		Connection con = ConnectionUtil.getDbConnection();
		String query = "update user_details set user_wallet = ? where user_id = ?";
		PreparedStatement statement=null;
		try {			
		statement= con.prepareStatement(query);
		statement.setDouble(1,amount);
		statement.setInt(2, userid);		
		 statement.executeUpdate("commit");
		 System.out.println("Updated successfully");
		 statement.close();
		 con.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

	

	
	
}
