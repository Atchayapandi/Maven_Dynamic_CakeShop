
<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>showUser page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">

body{
background-image:url('assets/index2.jpeg');
background-repeat:no-repeat;
background-size:cover;

}
</style>


</head>
<body>

<%
UserDaoImpl userDao=new UserDaoImpl();
ResultSet rs=userDao.showAllUser();
%>
<table align="center" class="table table-hover">

<tr>
<th>User Id</th>
<th>User Name</th>
<th>Email Id</th>
<th>Password</th>
<th>Address</th>
<th>Role</th>
<th>User Wallet<th>
</tr>

<% while(rs.next()){%>
<tr>
<td><%= rs.getInt(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getInt(7) %></td>
</tr>
<%} %>
</table>

</body>
</html>