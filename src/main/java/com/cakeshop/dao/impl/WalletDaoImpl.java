package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cakeshop.dao1.WalletDao;

public class WalletDaoImpl implements WalletDao{

	//get wallet balance:
	public  int walletbal(int id) 
	{
		try {
		Connection con = ConnectionUtil.getDbConnection();
		String query = "select user_wallet from user_details where user_id = ?";
		PreparedStatement statement = con.prepareStatement(query);
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		while(rs.next()) {
				return rs.getInt(1);
		}}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return -1;
	}

//update wallet balance:
	public int updatewallet(int amount,int userid) {
		Connection con = ConnectionUtil.getDbConnection();
		int res =0;
		try {
		String query = "update user_details set user_wallet = ? where user_id = ?";
		PreparedStatement statement = con.prepareStatement(query);
		statement.setInt(1,amount);
		statement.setInt(2, userid);
		res = statement.executeUpdate();
		 statement.executeUpdate("commit");
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return res;	

	}
	
	
}
