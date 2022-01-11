<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.ProductDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update product</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 10px;
}
#box{
width:350px;
margin-left:400px;
margin-top:50px;
}

#box1{
width:350px;
margin-left:800px;
margin-top:0px;
}
body{
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}
label {
        display: inline-block;
        width: 155px;
        text-align: right;
        margin-left:-50px; ;
      }
.button {
  background-color:pink; 
  border: none;
  color: white;
  padding: 3px 6px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
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
<%
ProductDaoImpl product=new ProductDaoImpl();
ResultSet rs=product.showProduct();
%>
<table class="table table-hover">
<tr>
<th>Cake Id</th>
<th>Product Name</th>
<th>Product Description</th>
<th>Product price</th>
<th>Product Categories</th>
<th>Product Rating</th>
</tr>

<% while(rs.next()){%>

<tr>
<td><%=rs.getInt(1) %>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getDouble(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getInt(6) %></td>
</tr>
<%} %>
</table>

<fieldset id="box"><legend>Delete Product using Id</legend>
<form action="deleteProduct" method="post">
Cake Id:<input type="number" name="cakeId" pattern="[0-9]"><br><br>
<button class="button button1" type="submit" id="button">delete</button>
<button class="button button1"><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</form>
</fieldset>

<fieldset id="box1"><legend>Update Product Price using Name</legend><center>
<form action="updateProduct" method="post">
<label for="cake price">New Cake Price: </label><input type="number" name="cakePrice"><br><br>
<label for="name">Cake Name: </label><input type="text"  name="cakeName"><br><br>
<button class="button button1" type="submit" id="button">Update</button>
<button class="button button1"><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</form>
</center>
</fieldset><br>


</body>
</html>