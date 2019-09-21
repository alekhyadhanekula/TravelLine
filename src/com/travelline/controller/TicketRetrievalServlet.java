package com.travelline.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.travelline.bean.Reservations;
import com.travelline.service.Service;

@WebServlet("/TicketRetrievalServlet")
public class TicketRetrievalServlet extends HttpServlet {
	
	static int ticket;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(TicketRetrievalServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		Service so=new Service();
		
		String name=request.getParameter("ticketno");
		try
		{
			ticket=Integer.parseInt(name);
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
		
		List<Reservations> ro=new ArrayList<>();
		
		ro=so.retrieveDetails(ticket);
		
		try
		{
			request.setAttribute("result", ro);
			request.getRequestDispatcher("/retrieveticket.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			log.fatal(e);
		}

	}

}
