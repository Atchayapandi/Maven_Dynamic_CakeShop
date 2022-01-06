package com.cakeshop.dao;

public interface UserRatingDao {

	public void updateRating(int rating, int proId);

	public int findRating(String proName);
}
