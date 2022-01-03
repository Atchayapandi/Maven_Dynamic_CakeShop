<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"  import ="com.cakeshop.dao.impl.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
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
<h2><i>For Any Queries Contact Us</i></h2>
<%HelpDaoImpl helpDao = new HelpDaoImpl(); 
ResultSet rs=helpDao.showHelp();%>

<%while(rs.next()){%>
<fieldset id="box">
<%rs.getInt(1);%>
<%rs.getString(2);%>
</fieldset>
<%}%>

</body>
</html>