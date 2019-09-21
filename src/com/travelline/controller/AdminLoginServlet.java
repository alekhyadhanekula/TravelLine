package com.travelline.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.travelline.service.Service;


@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	
	static String username;
	static String pass;
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	Logger log = Logger.getLogger(AdminLoginServlet.class);
	PropertyConfigurator.configure("log4j.properties");
	
	username=request.getParameter("username");
	pass=request.getParameter("pass");
	
    Service so=new Service();
	
	
	

    if( so.adminLogin(username,pass))
    {
    	HttpSession session = request.getSession(true);
    	session.setAttribute("user", username);
        session.setMaxInactiveInterval(30);
        try
        {
        	response.sendRedirect("adminindex.jsp");
        }
        catch(Exception exp)
        {
        	log.fatal(exp);
        }
    }
    
    else
    {
    	RequestDispatcher rd = request.getRequestDispatcher("adminlogin.jsp");
    	try
    	{
    		rd.include(request,response);
    	}
    	catch(Exception e)
    	{
    		log.fatal(e);
    	}
    }
	
}
}
