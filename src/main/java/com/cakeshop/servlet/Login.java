package com.cakeshop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.AdminDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter pw = response.getWriter();
		String EmailId = request.getParameter("EmailId");
		String password = request.getParameter("password");

		UserDaoImpl userDao = new UserDaoImpl();
		User currentUser = userDao.validateUser(EmailId, password);
		AdminDaoImpl admin=new AdminDaoImpl();
		HttpSession session=request.getSession();
		
		session.setAttribute("CurrentUser", EmailId);
		session.setAttribute("CurrentUser1", currentUser.getUserName());
		if (currentUser == null) {
			
			admin.validateAdmin(EmailId, password);
			response.sendRedirect("admin.jsp");
			
		} else {
			
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("showProduct.jsp");
			requestDispatcher.forward(request, response);

		}

	}

}
