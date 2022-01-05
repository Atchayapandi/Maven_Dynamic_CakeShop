<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*" import ="com.cakeshop.dao.impl.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
</style>
</head>
<body>

<form>
<%!ResultSet rs; %>
<%
String categoryname=request.getParameter("categoryname");
System.out.println(categoryname);
ProductDaoImpl product=new ProductDaoImpl();
rs=product.viewCategoryList(categoryname);
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
</form>

</body>
</html>