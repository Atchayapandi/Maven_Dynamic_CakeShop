<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*" import ="com.cakeshop.dao.impl.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>category wise cake</title>
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
/* Add a black background color to the top navigation */
.topnav {
  background-color: Gray;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: gray;
  color: white;
}
</style>
</head>
<body>
<div class="topnav" >
 
  <a href="MyOrders.jsp">My Orders</a>  
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>
   <a href="Contact.jsp">Contact</a>
   <a href="AboutUs.jsp">About</a>  
   <a href="Home.jsp">LogOut</a>
   
    <%double wallet=(double)session.getAttribute("wallbal"); %>
<h3><i> Wallet Amount : <%=wallet %></i></h3>
   
   
</div>
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