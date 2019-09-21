<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Cancel Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script>
function validateForm()
{
 var x = document.forms["myForm"]["serviceno"].value;  
 if (x == "")
  {
   alert("serviceno must be filled out");
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



<div class="container">
  <h2>Remove Bus Service</h2> 
  </br>
  <form class="form-inline" action="RemoveServiceServlet" autocomplete="off"onsubmit="return validateForm()" name="myForm" method="post">
    <div class="form-group">
      <label for="serviceno">Service No:</label></br>
      <input type="text" class="form-control" id="serviceno" placeholder="Enter Number" name="serviceno" size="10">
    </div>
    </br></br></br>
   <button type="submit" class="btn btn-default">Cancel</button>
  </form>
</div>

</body>
</html>
