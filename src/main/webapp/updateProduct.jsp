<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>

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
<form action="updateProduct" method="post">
Cake Price:<input type="number" name="cakePrice"><br><br>
Cake Name:<input type="text"  name="cakeName"><br><br>
<button type="submit" id="button">submit</button>

</form>
</center>
</fieldset>
</body>
</html>





