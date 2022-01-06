package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.dao1.ProductDao;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;

public class ProductDaoImpl implements ProductDao{

	ConnectionUtil conUtil = new ConnectionUtil();
	Connection con = conUtil.getDbConnection();

//show product method

	public ResultSet showProduct() {
		String showQuery = "select * from product_details";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs=null;
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(showQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

//add new product
	
	public void insertProduct(Products product) {
		String insertQuery = "insert into product_details(cake_name,cake_description,cake_price,category_name) values(?,?,?,?)";

		ConnectionUtil conUtil = new ConnectionUtil();
		Connection con = conUtil.getDbConnection();
		PreparedStatement pst = null;

		try {
			pst = con.prepareStatement(insertQuery);
			pst.setString(1, product.getCakeName());
			pst.setString(2, product.getCakeDescription());
			pst.setInt(3, product.getCakePrice());
			pst.setString(4, product.getCategoryName());
			System.out.println(product.getCategoryName());
			pst.executeUpdate();
			System.out.println("Value inserted Successfully");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("Value not inserted in the table");
		}

	}
	
	
	
//update product
	public  void updateProduct(double cakePrice, String cakeName) {
		String updateQuery = "update product_details set cake_price =?  where cake_name=?";

		try {
		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement pstmt = con.prepareStatement(updateQuery);
		pstmt.setDouble(1, cakePrice);
		pstmt.setString(2, cakeName);
		int i = pstmt.executeUpdate();
		System.out.println(i + "row updated");
		pstmt.close();
		con.close();
		}catch(SQLException e) {
			System.out.println("incorrect");
			e.printStackTrace();
		}
		
	}
	
//rating insert 
	public  void insertRating(int insertRating) {
		
		String updateQuery="update product_details set Ratings=? where cake_name=?";
		
		Connection con=ConnectionUtil.getDbConnection();
		try {
			PreparedStatement pstmt=con.prepareStatement(updateQuery);
//			pstmt.setInt(1, Integer.parseInt(insertRating.split(",")[1]));
//			pstmt.setString(2, Products.getCakeName());
			pstmt.executeUpdate();
			System.out.println("Rating  added thank you!!");
			pstmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
	}	

//delete method
	
	public  void deleteProduct(int cakeId)  {
		String deleteQuery = "delete from product_details where cake_id=?";

		Connection con = ConnectionUtil.getDbConnection();
		try {
		PreparedStatement pstmt = con.prepareStatement(deleteQuery);
		pstmt.setInt(1, cakeId);
		int i = pstmt.executeUpdate();
		System.out.println(i + "row deleted");
		pstmt.close();
		con.close();
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	
//find product id	
	
	public  int findProductId1(String productName)
	{
		String query="select cake_id from product_details where cake_name='"+productName+"'";
		
		Connection con=ConnectionUtil.getDbConnection();
	    Statement stmt; 
		int proId=0;
		try {
			stmt=con.createStatement();
			
			ResultSet rs=stmt.executeQuery(query);
			
			if(rs.next())
			{
				proId=rs.getInt(1);
			}			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		
		return proId;	
	}
	

	public  ResultSet findPrice(int proID)
	{
		String query="select * from product_details where cake_id='"+proID+"'";
		
		Connection con=ConnectionUtil.getDbConnection();
		Statement stmt;
		//int price=0;
		ResultSet rs=null;
		try {
			stmt=con.createStatement();			
			 rs=stmt.executeQuery(query);		
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return rs;
		
	}
	
	public ResultSet findCategory(String categoryName) { 
		Products category=null;
		String showQuery = "select * from product_details where category_name='"+categoryName+"'";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs=null;
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(showQuery);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}
	
	
	public ResultSet ShowRating() {
		
		String query="select cake_name,rating from product_details order by rating desc";
		
		Connection con=ConnectionUtil.getDbConnection();
		ResultSet rs=null;
		Statement stmt;
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return rs;
		}
	
	
	//Category List
	
public ResultSet ShowCategory() {
		
		String query="select DISTINCT category_name from product_details";
		
		Connection con=ConnectionUtil.getDbConnection();
		ResultSet rs=null;
		Statement stmt;
		try {
			stmt=con.createStatement();
			rs=stmt.executeQuery(query);
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return rs;
		
	}

public  ResultSet viewCategoryList(String categoryname)
{
	String query="select * from product_details where category_name=?";
	
	Connection con=ConnectionUtil.getDbConnection();
	PreparedStatement stmt;
	
	ResultSet rs=null;
	try {
		
		stmt=con.prepareStatement(query);
		stmt.setString(1, categoryname);
		rs=stmt.executeQuery();
		return rs;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}		
	
	return rs;
	
}

public  ResultSet filterPrice(int min,int max)
{
	String query="select cake_name from product_details where cake_price between "+min+"and"+max;
	
	Connection con=ConnectionUtil.getDbConnection();
	PreparedStatement stmt;	
	ResultSet rs=null;
	try {
		
		stmt=con.prepareStatement(query);		
		rs=stmt.executeQuery();
		return rs;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}		
	
	return rs;
	
}














	
	
	
	
}
