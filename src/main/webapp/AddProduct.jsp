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
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}
* {
  box-sizing: border-box;
}



label {
        display: inline-block;
        width: 155px;
        text-align: right;
        margin-left:-50px; ;
      }


</style>
</style>
</head>
<body>
<legend align="right">fieldset legend</legend>
<fieldset id="box"><center>
<form action="AddProduct" method="post">
<label for="cakeName">Cake_Name</label><input type="text" name="cakeName"  required><br><br>
<label for="cakedes">Cake_description</label><input type="text" name="cakeDescription" required><br><br>
<label for="cakeprice">Cake_price</label><input type="number" name="cakePrice" pattern="[0-9]" min="0" required><br><br>
<label for="catename">Category_name</label><input type="text" name="categoryName"  required><br><br>
<label for="picture">Image</label><input type="text" name="picture" ><br><br>
<button type="submit" name="button">Add</button>
</form></center>
</fieldset>
</body>
</html>