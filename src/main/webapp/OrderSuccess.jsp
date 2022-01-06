<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Success</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
body{
background-image:url('assets/rating.jpeg');
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
  <a class="active" href="Login.jsp">Login</a>
  <a href="register.jsp">Register</a>
  <a href="MyOrders.jsp">My Orders</a>  
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>
   <a href="Contact.jsp">Contact</a>
   <a href="AboutUs.jsp">About</a>  
   <a href="Home.jsp">LogOut</a>
</div>
<center><h1>Your Order is Placed Successfully!! Thank You!!</h1>
<h2><i>Your Payment Is Debited from Your Wallet</i></h2>
<form action="Rating" method="post">
<h3>please Add Your Rating :<input type="number" name="Rating" placeholder="upto 1...5 rating" pattern="[0-9]{5}"></h3>
<button type="submit" id="rating">Rate</button>
</form>
</center>

<%
ProductDaoImpl product=new ProductDaoImpl();
ResultSet rs=product.ShowRating();
%>

<h2><i>Highly Rated Cake</i></h2>
<table align="left" border="4">

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