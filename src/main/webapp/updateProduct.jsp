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
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

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
<fieldset id="box"><center>
<form action="updateProduct" method="post">
New Cake Price:<input type="number" name="cakePrice"><br><br>
Cake Name:<input type="text"  name="cakeName"><br><br>
<button class="button button1" type="submit" id="button">submit</button>

</form>
</center>
</fieldset>
</body>
</html>





