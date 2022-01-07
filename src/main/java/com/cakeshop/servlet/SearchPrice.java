package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;

/**
 * Servlet implementation class SearchPrice
 */
@WebServlet("/SearchPrice")
public class SearchPrice extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		
		
		int FromPrice=Integer.parseInt(request.getParameter("fromPrice"));
		int ToPrice=Integer.parseInt(request.getParameter("toPrice"));	
		
		ProductDaoImpl productDao=new ProductDaoImpl();
		ResultSet rs=productDao.filterPrice(FromPrice,ToPrice);
		try {
			while(rs.next()) {
			System.out.println(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("ShowPriceWise.jsp");
			
		
	}

}
