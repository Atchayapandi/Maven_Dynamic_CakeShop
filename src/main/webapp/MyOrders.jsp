<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.UserDaoImpl" import="com.cakeshop.dao.impl.CartDaoImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My order</title>
</head>
<body>

<%
//int userid=Integer.parseInt(session.getAttribute("userId").toString());
int userId=Integer.parseInt(session.getAttribute("UserId").toString());
System.out.println(userId);
CartDaoImpl cartDao=new CartDaoImpl();
ResultSet rs=cartDao.viewUserCart(userId);
%>

<form>
<table align="center">

<tr>
<th>cart Id</th>
<th>product Id</th>
<th>User Id</th>
<th>order quantity</th>
<th>total price</th>
<th>order date</th>
</tr>

<% while(rs.next()){%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getInt(2) %></td>
<td><%= rs.getInt(3) %></td>
<td><%= rs.getInt(4) %></td>
<td><%= rs.getDouble(5) %></td>
<td><%= rs.getDate(6) %></td>

</tr>
<%} %>
</table>
</form>



</body>
</html>