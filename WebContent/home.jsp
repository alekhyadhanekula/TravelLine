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
<title>Show Services</title>
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
	<%@page import="com.travelline.bean.Services"%>
	<%@page import="com.travelline.dao.ServicesDAO"%>
	<%@page import="java.util.Iterator"%>
	<%@page import="java.util.List"%>
	
	
	
	<% 
		HttpSession sessions = request.getSession();
	
	
		ServicesDAO sdao=new ServicesDAO();
		
		if (request.getAttribute("result") != null)
		{
			List<Services> searchResult = (List) request.getAttribute("result");
			if (searchResult.size() == 0 || searchResult == null) 
			{
			
		
	%>
			<a href="index.jsp">
			<button type="button" class="btn btn-danger" style="margin: 20px; padding: 2px; align-content: stretch;">No
			Results to Display Click Here to search again !</button>
			</a>
	<%

      
			} 
			else 
			{
				Iterator<Services> iterator = searchResult.iterator();
				ServicesDAO dao=new ServicesDAO();

				while (iterator.hasNext()) // iterate through all the data until the last record
				{
					Services currentService = iterator.next();
					//System.out.println(session.getAttribute("flag"));
					
					
	%>	
					<div>
    						<h3 align="center">DATE:<% out.println(request.getAttribute("dateofjourney")); %></h3>
    				</div>
					<div class="container" style="background-color:lightblue">
  						<div class="row">
    						<div class="col-sm-2">
      							<h3>Service No</h3>
      							<p><%= currentService.getServiceNumber()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Source</h3>
      							<p><%= currentService.getSource()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Destination</h3>
      							<p><%= currentService.getDestination()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Type</h3>
      							<p><%= currentService.getType()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Start Time</h3>
      							<p><%= currentService.getStartTime()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>End Time</h3>
      							<p><%= currentService.getEndTime()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Fare </h3>
      							<p><%= currentService.getTicketFare()%></p>
    						</div>
    						<div class="col-sm-2">
      							<h3>Available Seats</h3>
      							<%
      								String date=(String)request.getAttribute("dateofjourney");
     								out.println(dao.getAvailableSeats(currentService.getServiceNumber(),date));
								%>
      							
    						</div>
    						<div>
    								<form action="./seatselection.jsp">
    									<input type="hidden" name="service_no" value="<%= currentService.getServiceNumber()%>" />
    									<input type="hidden" name="doj" value="<%=date %>" />
    									<input type="submit" value="Book"/>
    								</form>
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