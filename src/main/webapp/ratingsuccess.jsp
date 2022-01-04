<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>rating added</title>
<style>
body{
background-image:url(https://image.freepik.com/free-photo/top-view-delicious-cake-arrangement_23-2148933608.jpg);
background-repeat:no-repeat;
background-size:cover;
color:white;

}
h3{
background-color:black;
margin-left:400px;
margin-top:250px;

}
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
<body >
<div class="topnav" >
  <a class="active" href="Login.jsp">Login</a>
  <a href="register.jsp">Register</a>
  <a href="Contact.jsp">Contact</a>
  <a href="AboutUs.jsp">About</a>  
  <a href="categories.jsp">Categories</a>
   <a href="ShowRating.jsp">Ratings</a>
     <a href="Home.jsp">LogOut</a>
</div>

<h3><i>Your Rating Was Added Successfully!!..</i></h3>

</body>
</html>