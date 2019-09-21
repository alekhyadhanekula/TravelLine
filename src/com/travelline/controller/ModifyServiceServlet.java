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

@WebServlet("/ModifyServiceServlet")
public class ModifyServiceServlet extends HttpServlet {
	
	
	static String serviceNo;
	static String source;
	static String destination;
	static String type;
	static String startTime;
	static String endTime;
	static String fare;
	static int seatsCapacity;
	static int serviceNumber;
	static int ticketFare;
	static String seats;
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(ModifyServiceServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		Service so=new Service();
		
		serviceNo=request.getParameter("serviceno");
		try
		{
			serviceNumber=Integer.parseInt(serviceNo);
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
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
		catch(Exception e)
		{
			log.fatal(e);
		}
		
	 	
        if( so.modifyService(serviceNumber,source,destination,type,startTime,endTime,ticketFare,seatsCapacity))
        {
        	try
        	{
        		response.sendRedirect("modifyservicesuccess.jsp");
        	}
        	catch(Exception e)
    		{
    			log.fatal(e);
    		}
        }
	
	}

}
