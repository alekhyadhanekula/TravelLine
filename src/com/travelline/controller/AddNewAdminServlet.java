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


@WebServlet("/AddNewAdminServlet")
public class AddNewAdminServlet extends HttpServlet {
	
	static String name;
	static String pass;
	static String confirmpass;
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Logger log = Logger.getLogger(AddNewAdminServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		name=request.getParameter("username");
		pass=request.getParameter("pass");
		confirmpass=request.getParameter("confirmpass");
		
		Service so=new Service();
		
		if(pass.equals(confirmpass))
		{
				if(so.addNewAdmin(name,pass))
				{
					try
					{
						response.sendRedirect("addadminsuccess.jsp");
					}
					catch(Exception e)
					{
						log.fatal(e);
					}
				}
		}
		
	}

}
