package com.cakeshop.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.model.Cart;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;
import com.cakeshop.model.User1;

public class UserDao {

//insert user method

	public void insertUser(User1 user) {
		String insertQuery = "insert into user_details(user_name,email_id,password,address) values(?,?,?,?)";
		 //con=null;
		PreparedStatement pst = null;
		try {
			System.out.println("hi");
			Class.forName("oracle.jdbc.OracleDriver");
		//	String url = "jdbc:oracle:thin:@localhost:1521:xe";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
			 System.out.println(con);
			 pst = con.prepareStatement(insertQuery);
				pst.setString(1, user.getUserName());
				pst.setString(2, user.getEmailId());
				pst.setString(3, user.getPassword());
				pst.setString(4, user.getAddress());
				pst.executeUpdate();
				System.out.println("Value inserted Successfully");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	

		//ConnectionUtil conUtil = new ConnectionUtil();
		//Connection con = conUtil.getDbConnection();
		

		
	}

//validate user method

	public static User validateUser(String EmailId, String password) {
		String validateQuery = "select * from user_details where role='user' and Email_id='" + EmailId
				+ "'and password='" + password + "'";

		Connection con = ConnectionUtil.getDbConnection();
		User user = null;
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(validateQuery);
			if (rs.next()) {
				user = new User(rs.getString(2), EmailId, password, rs.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("Statement error");
		}
		return user;
	}

//show all user method 
	ConnectionUtil conUtil = new ConnectionUtil();
	Connection con = conUtil.getDbConnection();

	public  ResultSet showAllUser() {
		

		String selectQuery = "select * from user_details where "
				+ "role='user'";

		ResultSet rs=null;
		

		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(selectQuery);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return rs;
	}
	
	
	

//update user
	public void update(String update) throws ClassNotFoundException, SQLException {
		String updateQuery = "update user_details set password=?  where Email_id=?";
		
		Connection con = ConnectionUtil.getDbConnection();
		

		PreparedStatement pstmt = con.prepareStatement(updateQuery);
		pstmt.setString(1, update.split(",")[0]);
		pstmt.setString(2, update.split(",")[1]);
		int i = pstmt.executeUpdate();
		System.out.println(i + "row updated");
		pstmt.close();
		con.close();
	}

//delete method

	public void deletedetails(String delete) throws SQLException {
		String deleteQuery = "delete from user_details where Email_id=?";

		Connection con = ConnectionUtil.getDbConnection();
		
		PreparedStatement pstmt = con.prepareStatement(deleteQuery);
		pstmt.setString(1, delete);
		int i = pstmt.executeUpdate();
		System.out.println(i + "row deleted");
		pstmt.close();
		con.close();
	}

//find user id method

	public static int findUserId(String userName) {
		
		String findUserID = "select user_id from user_details where user_name='"+userName+"'";
		Connection con = ConnectionUtil.getDbConnection();
		Statement stmt;
		
		int userId = 0;
		try {
			stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery(findUserID);

			if (rs.next()) {				
				userId = rs.getInt(1);
			}
		

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userId;

	}
	
	
	//get wallet balance:
		public static ResultSet walletbal(int id) throws Exception 
		{
			Connection con = ConnectionUtil.getDbConnection();
			System.out.println(id);
			String query = "select user_wallet from user_details where user_id = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setInt(1, id);
			ResultSet rs = statement.executeQuery();
//			while(rs.next()) {
//					System.out.println(rs.getInt(1)); 
//			}
			return rs;
		}

	//update wallet balance:
		public int updatewallet(int amount,int userid)throws Exception {
			System.out.println("atchaya");
			Connection con = ConnectionUtil.getDbConnection();
			String query = "update user_details set user_wallet = ? where user_id = ?";
			PreparedStatement statement = con.prepareStatement(query);
			statement.setInt(1,amount);
			statement.setInt(2, userid);
			//statement.executeUpdate("commit");
			int res = statement.executeUpdate();
			
//			if(res.next()) {
//				System.out.println(res.getString(1));
//			}
			 
			 System.out.println(amount+userid);
//			 int res1=0;
			return res;	

		}
		
		
	
		
	
	

}
