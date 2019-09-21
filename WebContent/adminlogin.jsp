<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Admin Login</title>

  <link rel='stylesheet' href='http://codepen.io/assets/libs/fullpage/jquery-ui.css'>

    <link rel="stylesheet" href="css/adminloginstyle.css" media="screen" type="text/css" />

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/tooplate-style.css">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script> 
        <script>
function validateForm()
{
 var x = document.forms["myForm"]["username"].value;  
 if (x == "")
  {
   alert("username must be filled out");
   return false;
 }
	var y = document.forms["myForm"]["pass"].value;
	  
	  if (y == "")
	   {
	    alert("pass must be filled out");
	    return false;
    
	   }
	
 }
 </script>
        

</head>

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Travel Line</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
    </ul>
  </div>
</nav>


  <div class="login-card">
    <h1>Admin Login</h1><br>
  <form action="AdminLoginServlet" autocomplete="off" onsubmit="return validateForm()" method="post" name="myForm" >
    <input type="text" name="username" placeholder="Enter Username">
    <input type="password" name="pass" placeholder="Enter Password" >
    <p>${requestScope.message}</p>
    <input type="submit" name="login" class="login login-submit" value="login">
  </form>

</div>

  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>

</body>

</html>