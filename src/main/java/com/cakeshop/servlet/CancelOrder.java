package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;

/**
 * Servlet implementation class CancelOrder
 */
@WebServlet("/cancelOrder")
public class CancelOrder extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();		
		CartDaoImpl cartDao=new CartDaoImpl();		
		int userId=Integer.parseInt(session.getAttribute("userId").toString());
				
		cartDao.deleteCart(userId);
		
//		WalletDaoImpl walletDao=new WalletDaoImpl();
//		
//		double wallbal=walletDao.walletbal(userId);	
//	
//		
//		System.out.println(wallbal);
//		
//		
//		
//		double totalPrice=(double)session.getAttribute("totalprice");
//		
//		System.out.println(totalPrice);
//		
//		wallbal=wallbal-totalPrice;
		
		
		
		response.sendRedirect("deleted.jsp");
				
		
	}

}
