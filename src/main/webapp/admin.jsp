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
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

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