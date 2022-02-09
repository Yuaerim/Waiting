<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/login.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Login Page</title>
</head>
<body>

    <div class="container">
        <div class="card card-container">
            <img id="profile-img" class="profile-img-card" src="images/loginlogo.jpg" />
           
            <p id="login_text" class="profile-name-card"> ★ Welcome to One Click Waiting ★</p>
            <form class="form-signin" method="post" action="login.do">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="inputId" name="userid" class="form-control" placeholder="ID" required autofocus>
                <input type="password" id="pw" name="userpw" class="form-control" placeholder="Password" required>
              
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
         	    <p>
         	    <a href="SignUp.jsp" id="return">Challenge Runner는 처음이신가요?</a>
         	    <a href="main.jsp" id="gosignup">BACK!</a>
         	    </p>
            </form><!-- /form -->
          
        </div><!-- /card-container -->
    </div><!-- /container -->
</body>