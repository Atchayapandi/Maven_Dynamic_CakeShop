<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forget Password</title>
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
<fieldset id="box"><center>
<form action="forgetPassword" method="post">
Set New Password : <input type="text" name="password" pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$"><br><br>
Email Id : <input type="Email" name="emailId"><br><br>
<button type="submit" id="button">Change</button>
</form></center>
</fieldset>
</body>
</html>