<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

 <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>

  <style>
  .container {
  width: 800px;
  border: 2px solid black;
  padding: 50px;
  padding-right: 100px;
  margin: 150px;
}
</style>

<script>
function validateForm()
{
 var x = document.forms["myForm"]["source"].value;  
 if (x == "")
  {
   alert("source must be filled out");
   return false;
 }
  var y = document.forms["myForm"]["destination"].value;
    
    if (y == "")
     {
      alert("destination must be filled out");
      return false;
    
     }
  var z = document.forms["myForm"]["doj"].value;
  
    
    if (z == "")
     {
      alert("doj must be filled out");
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
         <li><a href="aboutus.jsp">About Us</a></li>
      <li><a href="myticket.jsp">My Ticket</a></li>
      <li><a href="cancelticket.jsp">Cancel Tikcet</a></li>
      <li><a href="adminlogin.jsp">Admin Login</a></li>
    </ul>
  </div>
</nav>







<div class="container">
  <h2>Search Service</h2>
  </br>
  <form class="form-inline" action="HomePageServlet" autocomplete="off"  name="myForm"  onsubmit="return validateForm()" method="post">
    <div class="form-group">
      <label for="source">Source:</label></br>
      <input type="text" class="form-control" id="source" placeholder="Enter source" name="source" size="20">&nbsp;&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="destination">Destination:</label></br>
      <input type="text" class="form-control" id="destination" placeholder="Enter destination" name="destination" size="20">&nbsp;&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="datepicker">Journey Date:</label></br>
                <input type="text" class="form-control"  name="doj" id="datepicker" placeholder="Enter date">&nbsp;&nbsp;
    </div>
    </br></br></br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-default">Search Service</button>
  </form>
</div>

</body>
</html>
