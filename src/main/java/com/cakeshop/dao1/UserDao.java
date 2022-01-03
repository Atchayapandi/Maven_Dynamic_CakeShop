package com.cakeshop.dao1;
import java.sql.ResultSet;
import com.cakeshop.model.User;
import com.cakeshop.model.User1;

public interface UserDao {	
	public void insertUser(User1 user);
	public User validateUser(String EmailId, String password);
	public  ResultSet showAllUser();
	public void update(String update);
	public void deletedetails(String delete);
	public int findUserId(String userName);
	public  ResultSet walletbal(int id);
	public int updatewallet(int amount,int userid);
	}
