<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import=" com.cakeshop.dao.impl.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order here</title>
<style>
body {
	background-image:
		url(https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/rotating-cake-with-lights-in-background_z1cddzbzs_thumbnail-1080_01.png);
	background-repeat: no-repeat;
	background-size: cover;
	color: white;
}

#box {
	width: 350px;
	margin-left: 600px;
	margin-top: 150px;
}
</style>
</head>
<body>
	<%int productId=Integer.parseInt(request.getParameter("cakeId")); 
	System.out.println(productId);
	ProductDaoImpl productDao =new ProductDaoImpl();
	ResultSet rs=productDao.findPrice(productId);
	%>
	<center>
	
		<fieldset id="box" >
			<form action="BuyProduct" method="post">
			<%if(rs.next()){
			%>
			<h3><%=rs.getString(2) %></h3>
			<%double price=rs.getDouble(4) ;%>
			<h3>Price :<%= price%></h3><br>
				Quantity:<input type="number" name="quantity"><br>
				<br> city:<input type="text" name="city"><br>
				<br> State:<input type="text" name="state"><br>
				<br> pincode:<input type="number" name="pincode"><br><br>				
				<button type="submit" id="button">Buy</button>
				<%} %>
			</form>
		</fieldset>
	</center>
</body>
</html>