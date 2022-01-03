package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.UserRatingDaoImpl;

/**
 * Servlet implementation class Rating
 */
@WebServlet("/Rating")
public class Rating extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserRatingDaoImpl UserRatingDao=new UserRatingDaoImpl();
		
		int rating = UserRatingDao.findRating(null);		
		int newRating = 0;		
		rating += newRating;
		UserRatingDao.updateRating(rating, newRating);
		
		
				
		
		
	}

}
