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
<h2><i>Search by Price</i></h2>
<form action="ShowPriceWise.jsp" method="post" >
<i>From Price</i>
<input type="number" name="fromPrice" pattern="[0-9]" min="0" required><br><br>
<i>To Price</i>
<input type="number" name="toPrice" pattern="[0-9]" min="0" required><br>
<button class="button button1" type="submit" name="button">submit</button>
</form></center>
</fieldset>

</body>
</html>