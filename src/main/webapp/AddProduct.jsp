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
</style>
</head>
<body>

<fieldset id="box"><legend>Add New Product</legend><center>
<form action="AddProduct" method="post">
<label for="cakeName">Cake_Name</label><input type="text" name="cakeName"  required><br><br>
<label for="cakedes">Cake_description</label><input type="text" name="cakeDescription" required><br><br>
<label for="cakeprice">Cake_price</label><input type="number" name="cakePrice" pattern="[0-9]" min="0" required><br><br>
<label for="catename">Category_name</label><input type="text" name="categoryName"  required><br><br>
<label for="picture">Image</label><input type="text" name="picture" ><br><br>
<button type="submit" name="button" class="button button1">Add</button>
<button class="button button1"><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</form></center>
</fieldset>

</body>
</html>