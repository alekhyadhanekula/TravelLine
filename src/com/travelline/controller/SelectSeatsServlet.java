package com.travelline.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

@WebServlet("/SelectSeatsServlet")
public class SelectSeatsServlet extends HttpServlet {
	
	static String serviceno;
	static String seats;
	static int seatsNumber;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(SelectSeatsServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		seats=request.getParameter("seats");
		serviceno = request.getParameter("service_no");
		
		request.setAttribute("service_no", serviceno);
		
		try
		{
			seatsNumber=Integer.parseInt(seats);
		}
		catch(Exception e)
		{
			log.fatal(e);
		}
		
		if(seatsNumber==1)
		{
			try
			{
				request.getRequestDispatcher("reservationform1.jsp").forward(request, response);
			}
			catch(Exception e)
			{
				log.fatal(e);
			}
		
		}
		else if(seatsNumber==2)
		{
			try
			{
				request.getRequestDispatcher("reservationform2.jsp").forward(request, response);
			}
			catch(Exception e)
			{
				log.fatal(e);
			}
		}
		else if(seatsNumber==3)
		{
			try
			{
				request.getRequestDispatcher("reservationform3.jsp").forward(request, response);
			}
			catch(Exception e)
			{
				log.fatal(e);
			}
		}
		else if(seatsNumber==4)
		{
			try
			{
				request.getRequestDispatcher("reservationform4.jsp").forward(request, response);
			}
			catch(Exception e)
			{
				log.fatal(e);
			}
		}
	}

}
