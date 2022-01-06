<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
</style>
</head>
<body><%int FromPrice=Integer.parseInt(request.getParameter("fromPrice"));
int ToPrice=Integer.parseInt(request.getParameter("toPrice"));	

ProductDaoImpl productDao=new ProductDaoImpl();
ResultSet rs=productDao.filterPrice(FromPrice,ToPrice);
%>
<table>
<tr>
<th> cake</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product price</th>
<th>Product Categories</th>
<th>Product Rating</th>
</tr>
<% while(rs.next()){%>
<tr>
<td><img alt="#alter" src="<%= rs.getString(7) %>" width="200" height="200"></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getDouble(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getInt(6) %></td>
<td><button><a href="order.jsp?cakeId=<%=rs.getInt(1)%>&cakeName=<%=rs.getString(2)%>">Buy</a></button></td>

</tr>
<%} %>
</table>

</body>
</html>