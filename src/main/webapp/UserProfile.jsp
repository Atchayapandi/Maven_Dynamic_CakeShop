<%@page import="com.cakeshop.dao.impl.UserDaoImpl"%>
<%@page import="com.cakeshop.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
<style>
#box {
	width: 350px;	
	margin-left:900px;
	
}
body{
background-image:url('assets/cake1.jpeg');
background-repeat:no-repeat;
background-size:cover;
}
/* Add a black background color to the top navigation */
.topnav {
  background-color: gray;
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
   <a href="CustomizedCake.jsp">Customized Cake</a> 
   <a href="Home.jsp">LogOut</a>         
</div>
<%
String Email=session.getAttribute("EmailId").toString();
String password=session.getAttribute("password").toString();
UserDaoImpl userDao = new UserDaoImpl();
User user = userDao.validateUser(Email, password);
String UserName=user.getUserName();
String address=user.getAddress();
double Wallet=user.getWallet();
%>
<fieldset id="box"><legend align="left">User Profile</legend>
<h3>User Name : <%= UserName %></h3>
<h3>User Email : <%= Email %></h3>
<h3>User Address : <%=address %></h3>
<h3>User Wallet : <%=Wallet %></h3>
</fieldset>
</body>
</html>