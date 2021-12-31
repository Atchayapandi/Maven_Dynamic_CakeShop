package com.cakeshop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.AdminDao;
import com.cakeshop.dao.UserDao;
import com.cakeshop.model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Login() {
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
		String EmailId=request.getParameter("EmailId");	
		String password=request.getParameter("password");
		
		//pw.println("login success");
		
		UserDao userDao=new UserDao();	 
		User currentUser = UserDao.validateUser(EmailId, password);	

		
		if (currentUser == null) {			
			User adminuser = AdminDao.validateAdmin(EmailId, password);
			//response.getWriter().print("File Succed");
			response.sendRedirect("admin.jsp");
            				
			}
		else
		{
			RequestDispatcher requestDispatcher  = request.getRequestDispatcher("Home.jsp");
requestDispatcher.forward(request, response);

		}
		
		

		
		
		
		//doGet(request, response);
		
		
		
		//response.sendRedirect("");		
		
		
		
		
	}
	
	
	
	

}
