<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customized cake</title>
<style>
#box{
width:350px;
margin-left:600px;
margin-top:250px;
}
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
label {
        display: inline-block;
        width: 155px;
        text-align: right;
        margin-left:-50px; ;
      }

</style>

</head>
<body>
<fieldset id="box">
<form action="customized" method="post">

<label>Flavour</label>
<select name="flavour">

<option value="disabled" >Select</option>
<option >Vanilla</option>
<option >Butterscotch</option>
<option >Chocolate</option>
<option >Strawberry</option>
<option >Blueberry</option>
</select><br><br>

<label>Type</label>
<select name="type">
<option  value="disabled" >Select</option>
<option>Egg</option>
<option>Eggless</option>

</select><br><br>

<label>Size</label>
<select name="size">
 <option value="disabled">Select</option>
<option>Heart</option>
<option>Circle</option>
<option>Square</option>

</select><br><br>

Quantity<input type="number" name="quantity"><br><br>

<button type="submit" class="button button1">Click</button>


</form>
</fieldset>
</body>

</html>