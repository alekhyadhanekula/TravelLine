<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Add Admin</title>

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
var z = document.forms["myForm"]["confirmpass"].value;
	  
	  if (z == "")
	   {
	    alert("confirmpass must be filled out");
	    return false;
    
	   }
	  
	
 }
 </script>
         

</head>

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Travel Line</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="addservice.jsp">Add Service</a></li>
      <li><a href="modifyservice.jsp">Modify Service</a></li>
      <li><a href="cancelservice.jsp">Cancel Service</a></li>
      <li><a href="addadmin.jsp">Add Admin</a></li>
      <li><a href="AdminLogoutServlet">LogOut</a></li>
    </ul>
  </div>
</nav>


  <div class="login-card">
    <h1>Admin New Admin</h1><br>
  <form action="AddNewAdminServlet" autocomplete="off"  onsubmit="return validateForm()" name="myForm" method="post">
    <input type="text" name="username" placeholder="Enter Username">
    <input type="password" name="pass" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                      title="please enter one number and upper case letter and one lower case leter upto 8 characters">
    
    
    <input type="password" name="confirmpass" placeholder="Confirm Password">
    
    
    <input type="submit" name="addadmin" class="login login-submit" value="Add Admin">
  </form>

</div>

  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>

</body>

</html>