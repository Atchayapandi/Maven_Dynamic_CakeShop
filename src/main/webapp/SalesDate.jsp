<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sales Date</title>
<style>
body{
background-image:url('assets/index2.jpeg');
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

      
  #box{
  margin-top:200px;
  margin-left:100px;
  }    

</style>
</head>
<body><fieldset id="box">
<form action="salesWiseFilter" method="post">

<label>From Date</label><input type="date" name="FromDate"  required>

<label>To Date</label><input type="date" name="ToDate"  required>

<button type="submit" class="button button1">Search</button>
</form>
</fieldset>
</body>


</html>