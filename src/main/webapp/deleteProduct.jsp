<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete product</title>
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
</style>
</head>
<body>
<fieldset id="box">
<form action="deleteProduct">
Cake Id:<input type="number" name="cakeId" pattern="[0-9]">
<button type="submit" id="button">delete</button>
</form>
</fieldset>



</body>
</html>