<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add product</title>
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
<fieldset id="box"><center>
<form action="AddProduct" method="post">
Cake_Name<input type="text" name="cakeName" pattern="[A-Za-z/s]"><br><br>
Cake_description<input type="text" name="cakeDescription" pattern="[A-Za-z/s]"><br><br>
Cake_price<input type="number" name="cakePrice" pattern="[0-9]"><br><br>
Category_name<input type="text" name="categoryName" pattern="[A-Za-z/s]"><br><br>
<button type="submit" name="button">Add</button>
</form></center>
</fieldset>
</body>
</html>