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
margin-top:250px;
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

<h2>Welcome Admin</h2>

<fieldset id="box">
<form action="showUser.jsp" >
<input type="submit" id="button"><i>ShowUser</i> 
</form><br><br>

<form action="updateProduct.jsp" >
<input type="submit" id="button"><i>updateProduct</i> 
</form><br><br>

<form action="AddProduct.jsp" >
<input type="submit" id="button"><i>updateProduct</i> 
</form><br><br>

<form action="deleteProduct.jsp" >
<input type="submit" id="button"><i>deleteProduct</i> 
</form><br>
</fieldset>

</body>
</html>