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

@WebServlet("/RemoveServiceServlet")
public class CancelServiceServlet extends HttpServlet {
	
	static String serviceNo;
	static int serviceNumber;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(CancelServiceServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		serviceNo=request.getParameter("serviceno");
		
		try
		{
			serviceNumber=Integer.parseInt(serviceNo);
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
		
		Service so=new Service();
		
		//request.setAttribute("message", "Service Cancelled Successfully");
	 	
        if( so.removeService(serviceNumber))
        {
        	try
        	{
        		response.sendRedirect("cancelservicesuccess.jsp");
        	}
        	catch(Exception exp)
        	{
        		log.fatal(exp);
        	}
        }
	}

}
