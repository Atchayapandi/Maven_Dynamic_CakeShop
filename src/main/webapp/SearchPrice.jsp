<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>search Price</title>
<style>

body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}
#box {
	width: 350px;
	margin-left: 30px;
	margin-right:400px;
	margin-top: 150px;
}
/* Add a black background color to the top navigation */
.topnav {
  background-color: Gray;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: gray;
  color: white;
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