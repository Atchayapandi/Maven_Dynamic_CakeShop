package com.cakeshop.dao1;

public interface UserRatingDao {

	public void updateRating(int rating,int proId);
	public  int findRating(String proName);
}
