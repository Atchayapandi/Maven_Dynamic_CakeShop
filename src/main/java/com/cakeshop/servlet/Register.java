package com.cakeshop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.User;

import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.*;


@WebServlet("/Register")
/**
 * Servlet implementation class Sample
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Register() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter pw=response.getWriter();
		
		String userName=request.getParameter("userName");
		String EmailId=request.getParameter("EmailId");	
		String password=request.getParameter("password");
		String address=request.getParameter("address");		
		
		
	    UserDaoImpl userDao=new UserDaoImpl();	    
		User1 user=new User1(userName,EmailId,password,address);		
	    userDao.insertUser(user);
		
		response.sendRedirect("Login.jsp");
		
		doGet(request, response);
	}

}
