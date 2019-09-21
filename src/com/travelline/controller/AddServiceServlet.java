package com.travelline.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.travelline.service.Service;


import org.apache.log4j.*;

@WebServlet("/AddServiceServlet")
public class AddServiceServlet extends HttpServlet {
	
	
	static String source;
	static String destination;
	static String type;
	static String startTime;
	static String endTime;
	static String fare;
	static int ticketFare;
	static int seatsCapacity;
	static String seats;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(AddServiceServlet.class);
		PropertyConfigurator.configure("log4j.properties");

		Service so=new Service();
		
		source=request.getParameter("source");
		destination=request.getParameter("destination");
		type=request.getParameter("type");
		startTime=request.getParameter("start");
		endTime=request.getParameter("end");
		fare=request.getParameter("fare");
		
		try
		{
			ticketFare=Integer.parseInt(fare);
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
		seats=request.getParameter("seatcapacity");
		try
		{
			seatsCapacity=Integer.parseInt(seats);
		}
		catch(Exception ex)
		{
			log.fatal(ex);
		}
		
			log.info(source+destination+type+startTime+endTime+fare+seats);
		
			int serviceNumber=0;
			serviceNumber = so.generateServiceNumber();
			log.info("service number is: "+serviceNumber);
		 	
	        if( so.addServices(serviceNumber,source,destination,type,startTime,endTime,ticketFare,seatsCapacity))
	        {
	        	
	        	try
	        	{
	        		response.sendRedirect("addservicesuccess.jsp");
	        	}
	        	
	        	catch(Exception exp)
	    		{
	    			log.fatal(exp);
	    		}
	        }
		
		
		
	}
}

