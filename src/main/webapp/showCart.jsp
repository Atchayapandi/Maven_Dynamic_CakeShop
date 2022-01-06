
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
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}


</style>

<meta charset="ISO-8859-1">
<title>showcart page</title>
</head>
<body>
<form>

<%
CartDaoImpl cartDao=new CartDaoImpl();
ResultSet rs=cartDao.viewCart();
%>
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