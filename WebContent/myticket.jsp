<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html lang="en">
<head>
  <title>My Ticket</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script>
function validateForm()
{
 var x = document.forms["myForm"]["ticketno"].value;  
 if (x == "")
  {
   alert("ticketno must be filled out");
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
  <h2>Retrieve Ticket</h2> 
  </br>
  <form class="form-inline" action="TicketRetrievalServlet" autocomplete="off" onsubmit="return validateForm()" name="myForm" method="post">
    <div class="form-group">
      <label for="ticketno">Ticket No:</label></br>
      <input type="text" class="form-control" id="ticketno" placeholder="Enter number" name="ticketno" size="20">&nbsp;&nbsp;&nbsp;
    </div></br></br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
    