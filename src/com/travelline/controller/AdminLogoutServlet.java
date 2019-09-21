package com.travelline.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

@WebServlet("/AdminLogoutServlet")
public class AdminLogoutServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Logger log = Logger.getLogger(AdminLogoutServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		HttpSession session = request.getSession(false);
		 session.removeAttribute("user");
		 session.invalidate();
		 try
		 {
			 response.sendRedirect("index.jsp");
		 }
		 catch(Exception e)
		 {
			 log.fatal(e);
		 }
	}

}
