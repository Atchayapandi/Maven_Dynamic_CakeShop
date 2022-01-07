<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.UserDaoImpl" import="com.cakeshop.dao.impl.CartDaoImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My order</title>

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
</div>


<%
//int userid=Integer.parseInt(session.getAttribute("userId").toString());
int userId=Integer.parseInt(session.getAttribute("userId").toString());
System.out.println(userId);
CartDaoImpl cartDao=new CartDaoImpl();
ResultSet rs=cartDao.viewUserCart(userId);
%>

<form>
<table align="center">
<tr>

<th>Product Name</th>
<th>User Name</th>
<th>order quantity</th>
<th>total price</th>
<th>order date</th>
</tr>

<% String emailId=session.getAttribute("CurrentUser").toString();%>
<center><h2>User Name : <%=emailId %></h2></center>
<%while(rs.next()){%>
<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getInt(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
</tr>
<%} %>
</table>
</form>

</body>
</html>