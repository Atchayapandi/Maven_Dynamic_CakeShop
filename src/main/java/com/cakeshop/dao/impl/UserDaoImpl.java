package com.cakeshop.dao.impl;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.cakeshop.dao1.UserDao;
import com.cakeshop.model.Cart;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;
import com.cakeshop.model.User1;

public class UserDaoImpl implements UserDao{

	//insert user method

	@Override
		public void insertUser(User1 user) {
			String insertQuery = "insert into user_details(user_name,email_id,password,address) values(?,?,?,?)";
			 
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
	@Override
		public  User validateUser(String EmailId, String password) {
			String validateQuery = "select * from user_details where Email_id='" + EmailId
					+ "'and password='" + password + "'";

			Connection con = ConnectionUtil.getDbConnection();
			User user = null;
			try {
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(validateQuery);
				if (rs.next()) {
					System.out.println(rs.getString(2));
					user = new User(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getDouble(7));
					return user;
				}
			//	System.out.println("UserNMAE"+user.getUserName());
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.err.println("Statement error");
			}
			return user;
		}

	//show all user method 
		
@Override		
		public  ResultSet showAllUser() {		
			ConnectionUtil conUtil = new ConnectionUtil();
			Connection con = conUtil.getDbConnection();

			String selectQuery = "select * from user_details where role='user'";

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
@Override
public void update(String update)  {
			String updateQuery = "update user_details set password=?  where Email_id=?";
			
			Connection con = ConnectionUtil.getDbConnection();
			
	      try {
			PreparedStatement pstmt = con.prepareStatement(updateQuery);
			pstmt.setString(1, update.split(",")[0]);
			pstmt.setString(2, update.split(",")[1]);
			int i = pstmt.executeUpdate();
			System.out.println(i + "row updated");
			pstmt.close();
			con.close();
	      }catch (SQLException e) {
				e.printStackTrace();
			}
		}

	//delete method
@Override
		public void deletedetails(String delete)  {
			String deleteQuery = "delete from user_details where Email_id=?";

			Connection con = ConnectionUtil.getDbConnection();
			try {
			PreparedStatement pstmt = con.prepareStatement(deleteQuery);
			pstmt.setString(1, delete);
			int i = pstmt.executeUpdate();
			System.out.println(i + "row deleted");
			pstmt.close();
			con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}

	//find user id method
@Override
		public  int findUserId(String userName) {
			
			String findUserID = "select user_id from user_details where email_id='"+userName+"'";
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
		
		
//		//get wallet balance:
//			public  ResultSet walletbal(String name) 
//			{
//				ResultSet rs=null;
//				try {
//				Connection con = ConnectionUtil.getDbConnection();
//				System.out.println(name);
//				String query = "select user_wallet from user_details where user_name = ?";
//				PreparedStatement statement = con.prepareStatement(query);
//				statement.setString(1, name);
//				 rs = statement.executeQuery();		
//				
//				}catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				return rs;
//			}
	//
//		//update wallet balance:
//			public int updatewallet(int amount,int userid) {
//				
//				Connection con = ConnectionUtil.getDbConnection();
//				int res=0;
//				try {
//				String query = "update user_details set user_wallet = ? where user_id = ?";
//				PreparedStatement statement = con.prepareStatement(query);
//				statement.setInt(1,amount);
//				statement.setInt(2, userid);
//				//statement.executeUpdate("commit");
//				 res = statement.executeUpdate();
//				}catch (SQLException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
	//
//				}
	//
//				return res;	
	//
//			}
public  void updatePassword(String newPassword, String emailId) {
				String updateQuery = "update user_details set password =?  where Email_id=?";
				try {
				Connection con = ConnectionUtil.getDbConnection();
				PreparedStatement pstmt = con.prepareStatement(updateQuery);
				pstmt.setString(1, newPassword);
				pstmt.setString(2, emailId);
				System.out.println("hii");
				int i = pstmt.executeUpdate();
				System.out.println(i + "row updated");
				pstmt.close();
				con.close();
				}catch(SQLException e) {
					System.out.println("incorrect");
					e.printStackTrace();
				}
				
			}

//			@Override
//			public ResultSet walletbal(int id) {
//				// TODO Auto-generated method stub
//				return null;
//			}
			
			
		
			
		
	

}