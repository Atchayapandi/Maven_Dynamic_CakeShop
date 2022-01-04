package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BuyProduct")
public class BuyProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BuyProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
//		int quantity=Integer.parseInt(request.getParameter("quantity"));
		
//		String address=(request.getParameter("city")+request.getParameter("state")+request.getParameter("pincode"));
//		double price=Double.parseDouble(request.getParameter("price"));
//		double totalPrice=(price*quantity);		
		response.sendRedirect("OrderSuccess.jsp");		
		
		
	}

}
