<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login page</title>

<style>
body {
	margin: 0;
	padding: 0;
	background-image: url();
	background-size: cover;
}

.container {
	top: 50%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
}

.card {
	padding: 60px 40px 50px 40px;
	background: rgb(50, 50, 50);
	border-radius: 10px;
}

#name {
	width: 200px;
	border: none;
	background: transparent;
	border-bottom: 1px solid white;
	padding: 6px;
	margin-bottom: 20px;
	color: white;
}

#button {
	border-radius: 20px;
	padding: 10px 20px;
	background: dodgerblue;
	color: white;
	margin-top: 20px;
	border: none;
	outline: none;
	margin-left: 50px;
}

#button:hover {
	background-color: burlywood;
	color: black;
	cursor: pointer;
}

a {
	font-size: 16px;
}
img {
	border-radius: 50%;
	position: absolute;
	margin-left: 100px;
	margin-top: -40px;
}
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}
</style>
</head>
<body>
 <center>
 <%String msg=(String)session.getAttribute("Invalid"); 
 if(msg!=null){%>
 
	 <h2><%=msg %></h2>
	 <%session.removeAttribute("Invalid"); %>
 <% } %>
 
 </center>
	<form action="Login" method="post">
		<div class="container">
			<img src="assets/user1.png" height="70" width="70">
			<div class="card">
				<input type="text" placeholder="username" id="name" name="EmailId"required autofocus> <br> 
				<input type="password" placeholder="Password" id="name" name="password" pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$" required><br>
				<button type="submit" id="button">Submit</button>
			</form>	
				<form action="register.jsp">
		<button type="submit" id="button">Register</button><br><br>
	</form>
	            
				<a href="ForgetPassword.jsp"><h3><i>Reset My Password</i></h3></a>
	
	
	
	</div>
	</div>
	

</body>
</html>