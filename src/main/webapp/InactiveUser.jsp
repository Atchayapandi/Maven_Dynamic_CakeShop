<%@page import="com.cakeshop.dao.impl.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inactive User</title>
</head>
<body>

<form action="Inactive" method="post">
Email Id<input type="text" name="Email">
<button type="submit" name="button">Delete</button>
</form>

</body>
</html>