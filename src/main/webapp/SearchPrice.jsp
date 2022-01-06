<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search Price</title>
<style>

body{
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}
#box {
	width: 350px;
	margin-left: 600px;
	margin-top: 150px;
}

</style>


</head>
<body>


<fieldset id="box"><center>
<h2><i>Search by Price</i></h2>
<form action="ShowPriceWise.jsp" method="post" >
<i>From Price</i>
<input type="number" name="fromPrice"><br><br>
<i>To Price</i>
<input type="number" name="toPrice">
<button type="submit" name="button">submit</button>
</form></center>
</fieldset>






</body>
</html>