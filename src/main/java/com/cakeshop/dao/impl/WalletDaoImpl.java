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
		//System.out.println(userId);
		String query = "select user_wallet from user_details  where user_id = ?";
		Connection con=ConnectionUtil.getDbConnection();
	
		
		int user_wallet=100;		
		try {
			PreparedStatement statement=con.prepareStatement(query);
				statement.setInt(1,userId);
		ResultSet rs = statement.executeQuery();
		if(rs.next()) {
			  
				user_wallet=rs.getInt(1);
				//System.out.println(user_wallet);
				return user_wallet;
		}}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	

		return user_wallet;
	}

//update wallet balance:
	public void updatewallet(double amount,int userid){
		//System.out.println(amount+userid);
		Connection con = ConnectionUtil.getDbConnection();
		String query = "update user_details set user_wallet = ? where user_id = ?";
		PreparedStatement statement=null;
		try {			
		statement= con.prepareStatement(query);
		statement.setDouble(1,amount);
		statement.setInt(2, userid);		
		 int i=statement.executeUpdate();
		 //System.out.println(i+"Updated successfully");
		 statement.close();
		 con.close();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

	

	
	
}
