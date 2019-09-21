<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Service</title>
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
  <h2>Add Bus Service</h2> 
  </br>
  <form class="form-inline" action="AddServiceServlet" autocomplete="off" method="post">
    <div class="form-group">
      <label for="source">Source:</label></br>
      <input type="text" class="form-control" id="source" placeholder="Enter source" name="source" required size="20">&nbsp;&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="destination">Destination:</label></br>
      <input type="text" class="form-control" id="destination" placeholder="Enter destination" name="destination" required size="20">&nbsp;
    </div>
    </br></br></br>
    <div class="form-group">
      <label for="start">Start Time:</label></br>
      <input type="text" class="form-control" id="start" placeholder="Enter departure time" name="start" required size="20">&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="end">End Time:</label></br>
      <input type="text" class="form-control" id="end" placeholder="Enter end time" name="end" required size="20">&nbsp;&nbsp;&nbsp;
    </div>
  </br></br></br>
   <div class="form-group">
      <label for="seatcapacity">Capacity:</label></br>
      <input type="text" class="form-control" id="seatcapacity" placeholder="Enter seat capacity" name="seatcapacity" requried size="20">&nbsp;&nbsp;&nbsp;
    </div>
    <div class="form-group">
      <label for="fare">Fare:</label></br>
      <input type="text" class="form-control" id="fare" placeholder="Enter fare" name="fare" requried size="20">&nbsp;&nbsp;
    </div>
    </br></br></br>
    <div class="form-group">
      <label for="type">Type:</label></br>
      <input type="text" class="form-control" id="type" placeholder="Enter Bus Type" name="type" requried size="20">&nbsp;&nbsp;
    </div>
    </br></br></br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
    