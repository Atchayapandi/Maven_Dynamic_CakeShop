<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin page</title>
<style>
#box{
width:350px;
margin-left:600px;
margin-top:150px;
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
<fieldset id="box">
<center><h2>Welcome Admin</h2></center>

<form action="showUser.jsp" >
<input type="submit" id="button"><i>ShowUser</i> 
</form><br><br>

<form action="updateProduct.jsp" >
<input type="submit" id="button"><i>updateProduct</i> 
</form><br><br>

<form action="AddProduct.jsp" >
<input type="submit" id="button"><i>AddProduct</i> 
</form><br><br>

<form action="deleteProduct.jsp" >
<input type="submit" id="button"><i>deleteProduct</i> 
</form><br><br>

<form action="showCart.jsp" >
<input type="submit" id="button"><i>ShowCart</i> 
</form><br>
</fieldset>

</body>
</html>