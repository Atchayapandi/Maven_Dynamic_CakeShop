package com.cakeshop.dao1;

import java.sql.ResultSet;
import java.util.List;

import com.cakeshop.model.Products;

public interface ProductDao {

	public ResultSet showProduct();
	public void insertProduct(Products product);
	public  void updateProduct(String updateProduct);
	public  void insertRating(int insertRating);
	public  void deleteProduct(String delete);
	public  int findProductId1(String productName);
	public  int findPrice(int proID);
	public List<Products> findCategory(String categoryName);
	
}
