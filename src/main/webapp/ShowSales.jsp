<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view DateWise Sales</title>
</head>
<body>
<% ResultSet rs=(ResultSet)session.getAttribute("SalesList");%>
<table class="table table-hover">
<tr>
<th>Total User List</th>
<th>Total sale Amount  </th>
</tr>
<% while(rs.next()){%>
<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
</tr>
<%} %>
</table>
</body>
</html>