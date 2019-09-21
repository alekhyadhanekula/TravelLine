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

@WebServlet("/UpdateBookingsServlet")
public class UpdateBookingsServlet extends HttpServlet {
	
	static String serviceNo;
	static String date;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(UpdateBookingsServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		serviceNo=request.getParameter("service_no");
		
		date=request.getParameter("doj");
		
		Service so=new Service();
		
		try
		{
			if(so.updateBookings(Integer.parseInt(serviceNo),date))
			{
				log.info("Bookings successfully updated");
			}
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
		
		
	}

}
