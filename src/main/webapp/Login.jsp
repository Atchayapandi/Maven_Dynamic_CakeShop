<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="Login" method="post">new page Link<br>
E_mail : <input type="text" name="EmailId" pattern="[a-z]+[0-9]*[@][a-z]+[.][a-z]+"><br><br>
password : <input type="password" name="password" pattern="[A-Za-z0-9]{8,15}"><br><br>
<input type="submit" value="submit">
<input type="reset" value="reset">
</form>
</body>
</html>
</body>
</html--->

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
</style>
</head>
<body>
	<form action="Login" method="post">
		<div class="container">
			<img src="images/user1.png" height="70" width="70">
			<div class="card">
				<input type="text" placeholder="username" id="name" name="EmailId"required autofocus> <br> 
				<input type="password" placeholder="Password" id="name" name="password" pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{8,16}$" required><br>
				<button type="submit" id="button">Submit</button>
			</form>	
				<form action="register.jsp">
		<button type="submit" id="button">Register</button><br><br>
	</form>
	            
				<a href="ForgetPassword.jsp"><i>ForgetPassword</i></a>
	
	
	
	</div>
	</div>
	

</body>
</html>