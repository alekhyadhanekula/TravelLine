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

import com.travelline.bean.Services;
import com.travelline.service.Service;


@WebServlet("/HomePageServlet")
public class HomePageServlet extends HttpServlet {
	
	static String source;
	static String destination;
	static String date;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(HomePageServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		source=request.getParameter("source");
		destination=request.getParameter("destination");
		date=request.getParameter("doj");
		
		
		Service so=new Service();
		
		if(so.addSearchDetails(source,destination,date))
		{
			log.info("User Search Details Added Succcessfully");
		}
		
		
		/*String serviceNo=(String) request.getAttribute("service_no");
		System.out.println("Service Number from home page is "+serviceNo);*/
		
		/*int availableSeats=0;
		
		availableSeats= so.getAvailableSeats(Integer.parseInt(serviceNo),date);
		System.out.println("available seats is :"+availableSeats);*/
		
		List<Services> result;
		try {
				result = so.getRequiredServices(source,destination);
			
			
			if(result!=null)
			{
				Iterator  itr = result.iterator();
				while(itr.hasNext())
				{
					Services currentService = (Services) itr.next();
					log.info(currentService.getServiceNumber()+"  " + currentService.getSource() +"  " + currentService.getDestination()+"  "  + currentService.getStartTime()+"  "  + currentService.getEndTime()+"  " +currentService.getSeatsCapacity()+"  " +currentService.getTicketFare()+"  ");
					
				}
				request.setAttribute("result", result);
				request.setAttribute("dateofjourney", date);
				request.getRequestDispatcher("/home.jsp").forward(request, response);
			}
		} 
		catch (Exception e) {
	
			log.fatal(e);
		}
	}
		
	}


