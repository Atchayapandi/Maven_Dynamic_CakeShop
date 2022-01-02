package com.cakeshop.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.AdminDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/showProduct")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Login() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		PrintWriter pw = response.getWriter();
		String EmailId = request.getParameter("EmailId");
		String password = request.getParameter("password");

		UserDaoImpl userDao = new UserDaoImpl();
		User currentUser = userDao.validateUser(EmailId, password);
		AdminDaoImpl admin=new AdminDaoImpl();
		if (currentUser == null) {
			User adminuser =admin.validateAdmin(EmailId, password);
		

			response.sendRedirect("admin.jsp");
		} else {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("showProduct.jsp");
			requestDispatcher.forward(request, response);

		}

	}

}
