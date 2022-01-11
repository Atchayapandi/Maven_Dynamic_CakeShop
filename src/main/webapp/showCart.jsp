
<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
body{
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}


</style>

<meta charset="ISO-8859-1">
<title>showcart page</title>
</head>
<body>
<form>
<center><h2 style=color:red>Cart Items</h2></center>
<%
CartDaoImpl cartDao=new CartDaoImpl();
ResultSet rs=cartDao.viewCart();
%>
<table align="center">

<tr>
<th style=color:block>CART ID</th>
<h3><th style=color:block>PRODUCT ID</th></h3>
<h3><th style=color:block>USER ID</th></h3>
<h3><th style=color:block>ORDER QUANTITY</th></h3>
<h3><th style=color:block>TOTAL PRICE</th></h3>
<h3><th style=color:block>ORDER DATE</th></h3>

</tr>

<% while(rs.next()){%>
<tr>
<td style=color:white><%= rs.getInt(1) %></td>
<td style=color:white><%= rs.getInt(2) %></td>
<td style=color:white><%= rs.getInt(3) %></td>
<td style=color:white><%= rs.getInt(4) %></td>
<td style=color:white><%= rs.getDouble(5) %></td>
<td style=color:white><%= rs.getDate(6) %></td>

</tr>
<%} %>
</table>
</form><br><br>
<button><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</body>
</html>