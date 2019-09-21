<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Show Ticket</title>
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

<%@page import="java.util.ArrayList"%>
	<%@page import="com.travelline.bean.Reservations"%>
	<%@page import="com.travelline.dao.ServicesDAO"%>
	<%@page import="java.util.Iterator"%>
	
	
	
	<% 
		
		if (request.getAttribute("result") != null)
		{
			ArrayList<Reservations> roj=(ArrayList) request.getAttribute("result");
			if (roj== null) 
			{
			
		
	%>
			<a href="/retrieveticket.jsp">
			<button type="button" class="btn btn-danger" style="margin: 20px; padding: 2px; align-content: stretch;">No
			Results to Display Click Here to search again !</button>
			</a>
	<%

      
			} 
			else 
			{
					Iterator<Reservations> itr=roj.iterator();
					while(itr.hasNext())
					{
						Reservations currentReservations=itr.next();
	%>	
					<div class="container" style="background-color:lightblue">
  						<div class="row">
    						<div class="col-sm-2">
      							<h3>Name</h3>
      							<p><%= currentReservations.getName()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Age</h3>
      							<p><%= currentReservations.getAge()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Gender</h3>
      							<p><%= currentReservations.getGender()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Contact</h3>
      							<p><%= currentReservations.getPhoneNumber()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Email</h3>
      							<p><%= currentReservations.getEmail()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Ticket No</h3>
      							<p><%= currentReservations.getTicketNumber()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Service No</h3>
      							<p><%= currentReservations.getServiceNumber()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Source</h3>
      							<p><%= currentReservations.getSource()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Destination</h3>
      							<p><%= currentReservations.getDestination()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Type</h3>
      							<p><%= currentReservations.getType()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Start Time</h3>
      							<p><%= currentReservations.getStartTime()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>End Time</h3>
      							<p><%= currentReservations.getEndTime()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Ticket Fare</h3>
      							<p><%= currentReservations.getTicketFare()%></p>
    						</div>
  						</div>
  						</div>
					</div>
					<br>
					<br>
					<br>
				
	<%
					}
		}
		}
					%>
	</body>
	</html>
	