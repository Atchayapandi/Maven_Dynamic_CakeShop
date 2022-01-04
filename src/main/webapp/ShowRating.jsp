<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show Rating</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
body{
background-image:url(https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/rotating-cake-with-lights-in-background_z1cddzbzs_thumbnail-1080_01.png);
background-repeat:no-repeat;
background-size:cover;
color:white;
}
</style>

</head>
<body>
<center><h2><b>High Rated Cakes</b></h2></center>
<%
ProductDaoImpl product=new ProductDaoImpl();
ResultSet rs=product.ShowRating();
%>
<table align="center" border="5">

<th><h3>Product Name</h3></th>
<th><h3>Ratings</h3></th>


<% while(rs.next()){%>
<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getInt(2) %></td>
</tr>
<%} %>

</table>



</body>
</html>