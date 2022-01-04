package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.UserRatingDaoImpl;

/**
 * Servlet implementation class Rating
 */
@WebServlet("/Rating")
public class Rating extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		int newRating=Integer.parseInt(request.getParameter("Rating"));
		UserRatingDaoImpl UserRatingDao=new UserRatingDaoImpl();
		int c_id=Integer.parseInt(session.getAttribute("cake_id").toString());
		String cakeName=(String) session.getAttribute("cakename");
		int oldRating=UserRatingDao.findRating(cakeName);
		int rating=oldRating+newRating;			
		
		System.out.println(newRating);
		System.out.println(cakeName);
		System.out.println(oldRating);
		System.out.println(rating);
		
		UserRatingDao.updateRating(rating,c_id);
		response.sendRedirect("ratingsuccess.jsp");
		
				
		
		
	}

}
