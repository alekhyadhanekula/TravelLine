package com.travelline.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.travelline.service.Service;
import com.travelline.bean.Services;

@WebServlet("/TicketReservationServlet")
public class TicketReservationServlet extends HttpServlet {
	
	
	static String[] pName;
	static String[] ageValue;
	static String[] gender;
	static String[] phoneNumber;
	static String[] email;
	
	static int serviceNumber;
	static String source;
	static String destination;
	static String type;
	static String startTime;
	static String endTime;
	static int seatsCapacity;
	static int fare;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(TicketReservationServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		

		Service so=new Service();
		
		pName=request.getParameterValues("name");
		ageValue=request.getParameterValues("age");
		gender=request.getParameterValues("gender");
		phoneNumber=request.getParameterValues("phone");
		email=request.getParameterValues("email");
		
		
		
		String serviceNo=request.getParameter("service_no");
		
		String date=request.getParameter("doj");
		
		try
		{
			if(so.updateBookings(Integer.parseInt(serviceNo),date))
			{
				log.info("Bookings successfully Updated");
			}
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
		
		int ticketNumber=0;
		
			ticketNumber = so.generateTicketNumber();
		
			
		
		List<Services> result = null;
		try
		{
			result=so.getCurrentServiceDetails(Integer.parseInt(serviceNo));
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
		
		if(result!=null)
		{
			Iterator  itr = result.iterator();
			while(itr.hasNext())
			{
				Services currentService = (Services) itr.next();
				serviceNumber=currentService.getServiceNumber();
				source=currentService.getSource();
				destination=currentService.getDestination();
				type=currentService.getType();
				startTime=currentService.getStartTime();
				endTime=currentService.getEndTime();
				seatsCapacity=currentService.getSeatsCapacity();
				fare=currentService.getTicketFare();
			}
		}
		
		int length=pName.length;
		
		for(int i=0;i<length;i++)
	 	{
			try
	 		{
				if( so.makeReservations(pName[i],Integer.parseInt(ageValue[i]),gender[i],phoneNumber[i],email[i],ticketNumber,date,serviceNumber,source,destination,type,startTime,endTime,fare))
				{
					log.info("Success");
				}
	 		}
			catch(Exception e)
			{
				log.fatal(e);
			}
		}
		
		try
		{
			response.sendRedirect("paymentform.jsp");
		}
		catch(Exception e)
		{
			log.fatal(e);
		}

	}
		
}
