<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.ResultSet" import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>category wise cake</title>
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
.button {
  background-color:pink; 
  border: none;
  color: white;
  padding: 4px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid pink;
  }
  .button1:hover {
  background-color:pink;
  color: white;
}

</style>
</head>
<body>
<div class="topnav" >
 
  <a href="ViewOrder.jsp">Orders</a>  
  <a href="showProduct.jsp">Products</a>
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>       
   <a href="CustomizedCake.jsp">Customized Cake</a>
   <a href="UserProfile.jsp">Profile</a>
   <a href="Home.jsp">LogOut</a>         
</div>
<br><br>

<%ProductDaoImpl productDao=new ProductDaoImpl(); 
ResultSet rs=productDao.ShowCategory();
%>
<br><br>
<table align="center" border="3">

<th><h3>Category Name</h3></th>
<th><h3>Button</h3></th>

<% while(rs.next()){%>
<tr>
<td><%= rs.getString(1)%></td>

<td><button class="button button1" id="buy"><a href="categoryFilter.jsp?categoryname=<%=rs.getString(1)%>" style="text-decoration:none;">Search</a></button></td>

</tr>
<%} %>

</table>

</body>
</html>