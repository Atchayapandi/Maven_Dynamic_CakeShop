<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
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
   
    <%double wallet=(double)session.getAttribute("wallbal"); %>
<h3><i> Wallet Amount : <%=wallet %></i></h3>
   
   
</div>
<br><br>

<%ProductDaoImpl productDao=new ProductDaoImpl(); 
ResultSet rs=productDao.ShowCategory();
%>
<br><br>
<table align="center" border="3">

<th><h3>Category Name</h3></th>

<% while(rs.next()){%>
<tr>
<td><%= rs.getString(1)%></td>
<td><button><a href="categoryFilter.jsp?categoryname=<%=rs.getString(1)%>">Buy</a></button></td>

</tr>
<%} %>

</table>

</body>
</html>