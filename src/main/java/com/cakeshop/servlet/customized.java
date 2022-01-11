package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CustomizedDaoImpl;
import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;
import com.cakeshop.model.Customized;

/**
 * Servlet implementation class customized
 */
@WebServlet("/customized")
public class customized extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		HttpSession session=request.getSession();	
		String flavour=request.getParameter("flavour");		
		
		String type=request.getParameter("type");		
		
		String size=request.getParameter("size");		
		
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		
		System.out.println("quantity="+quantity);
		
		String orderdate=request.getParameter("orderdate");
		LocalDate Orderdate=LocalDate.parse(orderdate);
		
        String userName=(String) session.getAttribute("CurrentUser");
		
		UserDaoImpl userDao=new UserDaoImpl();
		//int userId=userDao.findUserId(userName);
		
		int userId=(int)session.getAttribute("userId");
		
		System.out.println("userid"+userId);
		
//		int cakeId=Integer.parseInt(session.getAttribute("cake_id").toString());
//		
//		ProductDaoImpl product=new ProductDaoImpl();
//		
//		
//		ResultSet rs=product.findPrice(cakeId);
//		
//		double price1=0;
//		try {
//			price1 = Integer.parseInt(rs.getString(1));
//		} catch (NumberFormatException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		Customized cust=new Customized();
		
		int amount=cust.getAmount();
		
		System.out.println("amount="+amount);
		
		double totalPrice=(amount*quantity);	
		
		System.out.println("totalprice="+totalPrice);
		
		
		WalletDaoImpl walletDao=new WalletDaoImpl();
		
		int userWallet=walletDao.walletbal(userId);				
		
		double wallbal=userWallet -totalPrice;
		
		System.out.println("wallbalance="+wallbal);
		
		walletDao.updatewallet(wallbal,userId);		 
						
		Customized customized=new Customized(userId, flavour,type,size,quantity,amount,Orderdate);
		
		CustomizedDaoImpl Customized =new CustomizedDaoImpl();
		
		Customized.insertCake(customized);			
		
		response.sendRedirect("OrderCustomized.jsp");
		
		
	}

}
