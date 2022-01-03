<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
background-image:url(https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/rotating-cake-with-lights-in-background_z1cddzbzs_thumbnail-1080_01.png);
background-repeat:no-repeat;
background-size:cover;
color:white;
}
#box{
width:350px;
margin-left:600px;
margin-top:200px;
}
/*.topnav {
  background-color: #333;
  overflow: hidden;
}

 Style the links inside the navigation bar 
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover 
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link 
.topnav a.active {
  background-color: #04AA6D;
  color: white;
}*/

</style>
</head>
<body>

<h1><i>Welcome to My CakeShop</i></h1>


<!-- div class="topnav" >
  <a class="active" href="Login.jsp">Login</a>
  <a href="register.jsp">Register</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
</div-->


<fieldset id="box">
<form action="Login.jsp" >
<input type="submit" id="button"><i>Login</i> 
</form><br><br>


<form action="register.jsp" >
<input type="submit" id="button"><i>Register</i> 
</form>
</fieldset>







</body>
</html>