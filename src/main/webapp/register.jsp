<! DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
</head>
<body>


<!--form action="Register" method="post"><br>
Name : <input type ="text" name="userName" pattern="[A-Za-z]{3,}"><br><br>
E_mail : <input type="text" name="EmailId" pattern="[a-z]+[0-9]*[@][a-z]+[.][a-z]+"><br><br>
password : <input type="password" name="password" pattern="[A-Za-z0-9]{8,15}"><br><br>
address : <input type="text" name="address" pattern="[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{25,}">
<input type="submit" value="submit">
<input type="reset" value="reset">
</form><br><br>



<!--doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Matteo Bruni">
    <title>Register Template - tsParticles</title>

    <! Custom styles for this template >
    <link href="css/particles.css" rel="stylesheet"/>
    <link href="css/auth.css" rel="stylesheet"/>
</head>

<body>
<div id="tsparticles"></div>
<main class="box">
    <h2>Register</h2>
    <form>
        <div class="inputBox">
            <label for="userName">Username</label>
            <input type="text" name="userName" id="userName" placeholder="type your username" pattern="[A-Za-z]{3,}"required/>
            
        </div>
        <div class="inputBox">
            <label for="email">Email</label>
            <input type="email" name="Email_id" id="email" placeholder="type your email" pattern="[a-z]+[0-9]*[@][a-z]+[.][a-z]+"
                   required/>        
        </div> 
        <div class="inputBox">
            <label for="userPassword">Password</label>
            <input type="password" name="Password" id="userPassword" placeholder="type your password" pattern="[A-Za-z0-9]{8,15}"
                   required/>
        </div>
          
        
         <div class="inputBox">
            <label for="address">address</label>
            <input type="text" name="address" id="address" placeholder="type your adress" pattern="[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{25,}"
                               required/>
        </div>      
        
       
        <button type="submit" name="" style="float: left;">Submit</button>
        <a class="button" href="login.html" style="float: left;">Login</a>
    </form>
</main>
<footer>
</footer>

<script src="https://cdn.jsdelivr.net/npm/tsparticles@1.34.1/tsparticles.min.js"
        integrity="sha256-D6LXCdCl4meErhc25yXnxIFUtwR96gPo+GtLYv89VZo=" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/particles.js"></script----->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login page</title>
    <style>
        body{
            margin: 0;
            padding: 0;
            background-image: url();
            background-size: cover;
        }
        .container{
            top:50%;
            left:50%;
            position:absolute;
            transform: translate(-50%,-50%);
        }
        .card{
            padding:60px 40px 50px 40px;
            background: rgb(50,50,50);
            border-radius: 10px;
        }
        #name{
            width: 200px;
            border: none;
            background: transparent;
            border-bottom: 1px solid white;
            padding:6px;
            margin-bottom: 20px;
            color: white;
        }
        #button{
            border-radius:20px;
            padding:10px 20px;
            background: dodgerblue;
            color: white;
            margin-top:20px;
            border: none;
            outline: none;
            margin-left:50px;
        }
       
        #button:hover{
            background-color:burlywood;
            color: black;
            cursor: pointer;
        }
        a{
            font-size:16px;
        }
        img{
            border-radius: 50%;
            position: absolute;
            margin-left: 100px;
            margin-top:-40px;
        }
    </style>
</head>
<body >
    <form action="Register" method="post">
    <div class="container">
        <img src="images/user1.png" height="70" width="70">
        <div class="card">   
            <input type ="text" name="userName" placeholder="Username" pattern="[A-Za-z]{3,}" required autofocus> <br><br>
          <input type="email" name="EmailId" placeholder="Email_id" required><br><br>
          <input type="password" name="password" placeholder="Password" pattern="[A-Za-z0-9]{8,15}" required><br><br>
          <input type="text" name="address" placeholder="address" pattern="[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{25,}" required><br><br>                  
          <button type="submit" id="button" >Submit</button>
          <button type="reset" id="button">Reset</button></form>          
          
        </div>
    </div>                 
</body>
</html>






















































</body>
</html>