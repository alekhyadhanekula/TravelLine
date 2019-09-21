package com.travelline.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.travelline.service.Service;


@WebServlet("/CancelTicketServlet")
public class CancelTicketServlet extends HttpServlet {
	
	static int ticketNumber;
	static String s;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(CancelTicketServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		 	s= request.getParameter("ticketno") ;
		 	try
		 	{
		 		ticketNumber=Integer.parseInt(s);
		 	}
		 	catch(Exception e)
		 	{
		 		log.fatal(e);
		 	}
	        
	       Service so=new Service();
	        
	        if(so.cancelTicket(ticketNumber))
	        {
	        	try
	        	{
	        		response.sendRedirect("./ticketcancelsuccess.jsp");
	        	}
	        	catch(Exception ex)
	        	{
	        		log.fatal(ex);
	        	}
	        }
	}

}
