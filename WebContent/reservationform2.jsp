<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Reservation Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
  <h2>Fill Details</h2> 
  </br>
  <form class="form-inline" action="TicketReservationServlet" autocomplete="off" method="post">
    <div class="form-group">
      <label for="name">Name:</label></br>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" size="20">&nbsp;&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="age">Age:</label></br>
      <input type="text" class="form-control" id="age" placeholder="Enter age" name="age" size="5">&nbsp; &nbsp;
    </div>
    <div class="form-group">
      <label for="gender">Gender:</label></br>
      <select name = "gender">
         <option value="select" selected>Select </option> 
         <option value="Female">Female</option>
         <option value="Male">Male</option>
    </select>&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="phone">Contact:</label></br>
      <input type="text" class="form-control" id="phone" placeholder="Enter number" name="phone" maxlength="10" pattern="\d{10}" title="please enter 10 digits"/>&nbsp;&nbsp;&nbsp;
       
      
    </div>
   <div class="form-group">
      <label for="email">Email:</label></br>
      <input type="text" class="form-control" id="email" placeholder="Enter mail id" name="email" size="20" pattern="[^@]*@[^@]*">&nbsp;&nbsp;&nbsp;
      
    </div></br></br>
    <div class="form-group">
      <label for="name">Name:</label></br>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" size="20">&nbsp;&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="age">Age:</label></br>
      <input type="text" class="form-control" id="age" placeholder="Enter age" name="age" size="5">&nbsp; &nbsp;
    </div>
    <div class="form-group">
      <label for="gender">Gender:</label></br>
      <select name = "gender">
         <option value="select" selected>Select </option> 
         <option value="Female">Female</option>
         <option value="Male">Male</option>
    </select>&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="phone">Contact:</label></br>
      <input type="text" class="form-control" id="phone" placeholder="Enter number" name="phone" maxlength="10" pattern="\d{10}" title="please enter 10 digits"/>&nbsp;&nbsp;&nbsp;
       
      
    </div>
   <div class="form-group">
      <label for="email">Email:</label></br>
      <input type="email" class="form-control" id="email" placeholder="Enter mail id" name="email" size="20" pattern="[^@]*@[^@]*">&nbsp;&nbsp;&nbsp;
    
    </div>
    </br></br></br>
    <input type="hidden" name="doj" value="<%= request.getParameter("doj") %>" />
    <input type="hidden" name="service_no" value="<%= request.getParameter("service_no")%>">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
    
</html>