package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.CustomizedDaoImpl;
import com.cakeshop.model.Customized;

/**
 * Servlet implementation class customized
 */
@WebServlet("/customized")
public class customized extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		String flavour=request.getParameter("flavour");		
		
		String type=request.getParameter("type");		
		
		String size=request.getParameter("size");
		
		
		
		int quantity=Integer.parseInt(request.getParameter("quantity"));		
		
		Customized customized=new Customized(flavour,type,size,quantity);
		
		CustomizedDaoImpl Customized =new CustomizedDaoImpl();
		
		Customized.insertCake(customized);			
		
		response.sendRedirect("OrderCustomized.jsp");
		
		
	}

}
