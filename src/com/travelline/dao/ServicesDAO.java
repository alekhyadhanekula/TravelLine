package com.travelline.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

import com.travelline.service.Service;
import com.travelline.bean.Services;
import com.travelline.controller.HomePageServlet;
import com.travelline.bean.Reservations;

public class ServicesDAO {
	
	public Logger getLogger()
	{
		Logger log = Logger.getLogger(HomePageServlet.class);
		PropertyConfigurator.configure("log4j.properties");
		
		return log;
	}
	
	
	@SuppressWarnings("null")
	public boolean adminLogin(String name,String passw)
	{
			ServicesDAO dao=new ServicesDAO();
			Connection conn = null;
			ResultSet rs=null;
			String url="jdbc:mysql://localhost:3306/travelline";
			String username="root";
			String pass="tiger";
			
			boolean status=false;
			
			Logger log=dao.getLogger();
			
			
			try
			{
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,username,pass);
			} 
			catch (ClassNotFoundException e)
			{
				log.fatal(e);
			}
			catch (SQLException e) 
			{
				log.fatal(e);
			}
			
			try {
				
				Statement stmt = null;
				stmt = conn.createStatement();
				String sql = "SELECT username, password FROM travelline.admin_details WHERE username='" + name + "' AND password = '" + passw + "';";
	           
				rs = stmt.executeQuery(sql);

	    
	            if (rs.next())
	                status=true;
			}
			
			catch (SQLException e) 
			{
				
				log.fatal(e);
			}
			
			return status;
	}
	
			//Add New Admin
			public boolean addNewAdmin(String name, String passw) {
		
				ServicesDAO dao=new ServicesDAO();
				Connection conn = null;
				PreparedStatement ps = null;
				String url="jdbc:mysql://localhost:3306/travelline";
				String username="root";
				String pass="tiger";
				int result=0;
				boolean b=false;
				
				Logger log=dao.getLogger();
				
				try
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					conn = DriverManager.getConnection(url,username,pass);
				} 
				catch (ClassNotFoundException e)
				{
					log.fatal(e);
				}
				catch (SQLException e) 
				{
					log.fatal(e);
				}
				
				try {
					
					ps=conn.prepareStatement("insert into travelline.admin_details values(?,?)");
					ps.setString(1, name);
					ps.setString(2, passw);
					
					result=ps.executeUpdate();

		    
		            if (result!=0)
		                b=true;
					}
				
				catch (SQLException e)
				{
					
					log.fatal(e);
				}
				
				return b;
			}
	
	
	//Generate Service Number For New Bus Service
	public int generateServiceNumber() {
		
		ServicesDAO dao=new ServicesDAO();
		Connection conn = null;
		PreparedStatement ps = null;
		String url="jdbc:mysql://localhost:3306/travelline";
		String username="root";
		String pass="tiger";
		
		Logger log=dao.getLogger();
		
		try
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
		} 
		catch (ClassNotFoundException e)
		{
			log.fatal(e);
		}
		catch (SQLException e) 
		{
			log.fatal(e);
		}
		
		int serviceNo=0;
		try {
		
			ps=conn.prepareStatement("select max(service_no) from travelline.services");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				serviceNo=rs.getInt(1);
				serviceNo++;
			}
			
			
		}
		catch (SQLException e) 
		{
			
			log.fatal(e);
		}
		
		return serviceNo;
	}

	//Add New Bus Service
	public boolean addServices(int serviceNumber, String source, String destination, String type, String startTime,
			String endTime, int ticketFare, int seatsCapacity) {
		ServicesDAO dao=new ServicesDAO();
		Connection conn = null;
		PreparedStatement ps = null;
		int result=0;
		String url="jdbc:mysql://localhost:3306/travelline";
		String username="root";
		String pass="tiger";
		
		Logger log=dao.getLogger();
		
		boolean status=false;
		ArrayList<Services> serviceList = new ArrayList();
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
		} 
		catch (ClassNotFoundException e)
		{
			log.fatal(e);
		}
		catch (SQLException e) 
		{
			log.fatal(e);
		}
		
		try {
			
			String sql="insert into travelline.services(service_no,source,destination,type,start_time,end_time,seats_capacity,fare) values(?,?,?,?,?,?,?,?)";
			
			ps=conn.prepareStatement(sql);
			
			ps.setInt(1,serviceNumber);
			ps.setString(2,source);
			ps.setString(3,destination);
			ps.setString(4,type);
			ps.setString(5,startTime);
			ps.setString(6,endTime);
			ps.setInt(7,seatsCapacity);
			ps.setInt(8,ticketFare);
			
			result= ps.executeUpdate();
			
			if(result!=0)
			{
				status=true;
				serviceList.add(new Services(serviceNumber,source,destination,type,startTime,endTime,ticketFare,seatsCapacity));
			}
			
			Iterator<Services> itr = serviceList.iterator();
			
			while(itr.hasNext()){
				log.info(itr.next());
			}
		}
		
		
		catch (SQLException e) 
		{
			log.fatal(e);
			
		}
		
		return status;
	}
	
	
	//Modify Existing Bus Service
	public boolean modifyService(int serviceNumber, String source, String destination, String type, String startTime,
			String endTime, int seatsCapacity, int ticketFare) {
		
		ServicesDAO dao=new ServicesDAO();
		Connection conn = null;
		PreparedStatement ps = null;
		int result=0;
		String url="jdbc:mysql://localhost:3306/travelline";
		String username="root";
		String pass="tiger";
		
		Logger log=dao.getLogger();
		
		boolean b=false;
		
		try
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
		} 
		catch (ClassNotFoundException e)
		{
			log.fatal(e);
		}
		catch (SQLException e) 
		{
			log.fatal(e);
		}
		
		try {
			ps=conn.prepareStatement("Update travelline.services set source=?,destination=?,type=?,start_time=?,end_time=?,seats_capacity=?,fare=? where service_no=?");
			
			
			ps.setString(1,source);
			ps.setString(2,destination);
			ps.setString(3, type);
			ps.setString(4,startTime);
			ps.setString(5,endTime);
			ps.setInt(6,seatsCapacity);
			ps.setInt(7,ticketFare);
			ps.setInt(8,serviceNumber);
			
			result= ps.executeUpdate();
			
			
			if(result!=0)
			{
				b=true;
			}
		}
		
		catch (SQLException e)
		{
			
			log.fatal(e);
		}
		
		return b;
	}
	
	
	//Cancel A Bus Service
	public boolean cancelService(int serviceNumber)
	{
		ServicesDAO dao=new ServicesDAO();
		Connection conn = null;
		PreparedStatement ps = null;
		int result=0;
		String url="jdbc:mysql://localhost:3306/travelline";
		String username="root";
		String pass="tiger";
		
		Logger log=dao.getLogger();
		
		boolean status=false;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
		} 
		catch (ClassNotFoundException e)
		{
			log.fatal(e);
		}
		catch (SQLException e) 
		{
			log.fatal(e);
		}
		
		try {
			ps=conn.prepareStatement("delete from travelline.services where service_no=?");
			
			ps.setInt(1, serviceNumber);
			result= ps.executeUpdate();
			
			
			if(result!=0)
			{
				status=true;
			}
		}
		
		catch (SQLException e)
		{
			log.fatal(e);
			
		}
		
		return status;
}
	
	
	
	

	//Retrieve Ticket Based on Ticket Number
	public List<Reservations> retrieveTicket(int ticketNumber) {
		
		ServicesDAO dao=new ServicesDAO();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs=null;
		String url="jdbc:mysql://localhost:3306/travelline";
		String username="root";
		String pass="tiger";
		
		Logger log=dao.getLogger();
		
		List<Reservations> list=new ArrayList<>();
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,pass);
		} 
		catch (ClassNotFoundException e)
		{
			log.fatal(e);
		}
		catch (SQLException e) 
		{
			log.fatal(e);
		}

		
		try {
				
				ps=conn.prepareStatement("select * from travelline.reservations where ticket_no=?");
				ps.setInt(1,ticketNumber);
				rs=ps.executeQuery();
				while(rs.next())
				{
					list.add(new Reservations(rs.getString(1),rs.getInt(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getString(7),rs.getInt(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getInt(14)));
				}
			
			}
		catch (SQLException e)
		{
			log.fatal(e);
			
		}
		
		return list;
	}

	
		//Cancel an Existing Ticket Based On Ticket Number
		public boolean cancelTicket(int ticketNumber) {

				ServicesDAO dao=new ServicesDAO();
				Connection con=null; 
		        PreparedStatement ps = null;
		        String url="jdbc:mysql://localhost:3306/travelline";
				String username="root";
				String pass="tiger";
				
				Logger log=dao.getLogger();
				
				int result=0;
				boolean status=false;
		        try{  
		        	Class.forName("com.mysql.cj.jdbc.Driver");
					con = DriverManager.getConnection(url,username,pass); 
		        }
		        catch(Exception e)
		        {
		        	log.fatal(e);
		        }  
		        
		        try{    
		            ps=con.prepareStatement("delete from reservations where ticket_no=?");  
		            ps.setInt(1,ticketNumber);  
		            result=ps.executeUpdate();  
		           
		           if(result!=0)
		           {
		        	   status=true;
		           }
		              
		            con.close();  
		        }
		        catch(Exception e)
		        {
		        	log.fatal(e);
		        }		        
		  return status;
		 
	}
		
		
		//Gather User Search Details
		public boolean addSearchDetails(String source, String destination, String doj) {
			
			ServicesDAO dao=new ServicesDAO();
			Connection conn = null;
			PreparedStatement ps = null;
			int result=0;
			String url="jdbc:mysql://localhost:3306/travelline";
			String username="root";
			String pass="tiger";
			
			Logger log=dao.getLogger();
			
			
			boolean status=false;
			
			try
			{	
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,username,pass);
			} 
			catch (ClassNotFoundException e)
			{
				log.fatal(e);
			}
			catch (SQLException e) 
			{
				log.fatal(e);
			}
			
			try {
				ps=conn.prepareStatement("insert into search_details values(?,?,?)");
				
				ps.setString(1,source);
				ps.setString(2, destination);
				ps.setString(3, doj);
				result= ps.executeUpdate();
				
				if(result!=0)
				{
					status=true;
				}
			}
			
			catch (SQLException e) 
			{
				log.fatal(e);
				
			}
			
			return status;
		}

		
		
		//Display Services According to User Search Criteria
		public List<Services> getRequiredServices(String source, String destination) {
			
			ServicesDAO dao=new ServicesDAO();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs=null;
			String url="jdbc:mysql://localhost:3306/travelline";
			String username="root";
			String pass="tiger";
			
			Logger log=dao.getLogger();
			
			List<Services> serviceList = new ArrayList<>();
			
			try
			{	
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,username,pass);
			} 
			catch (ClassNotFoundException e)
			{
				log.fatal(e);
			}
			catch (SQLException e) 
			{
				log.fatal(e);
			}
		
		try {
			ps=conn.prepareStatement("select * from services where source=? and destination=?");
			ps.setString(1, source);
			ps.setString(2, destination);
			rs= ps.executeQuery();
			
			while(rs.next()) 
			{
				serviceList.add(new Services(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getInt(8),rs.getInt(7)));
			}
					conn.close();
		
			} catch (SQLException e) {
		
				log.fatal(e);
			}

		return serviceList;
	
	
		}

		public int getAvailableSeats(int serviceNumber, String date) {
			
			ServicesDAO dao=new ServicesDAO();
			Connection conn = null;
			PreparedStatement ps1 = null;
			PreparedStatement ps2 =null;
			ResultSet rs1=null;
			ResultSet rs2=null;
			int availableSeats=0;
			
			String url="jdbc:mysql://localhost:3306/travelline";
			String username="root";
			String pass="tiger";
			
			Logger log=dao.getLogger();

			int bookingsCount=0;
			int totalSeats=0;


			try
			{
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,username,pass);
			} 
			catch (ClassNotFoundException e)
			{
				log.fatal(e);
			}
			catch (SQLException e) 
			{
				log.fatal(e);
			}
			
			try {
					ps1=conn.prepareStatement("select count(*) as count from travelline.booking_updates where service_no=? and booking_date=?");
					ps1.setInt(1,serviceNumber);
					ps1.setString(2, date);

					rs1=ps1.executeQuery();
					ps2=conn.prepareStatement("select seats_capacity from services where service_no=?");
					ps2.setInt(1,serviceNumber);
					
					rs2=ps2.executeQuery();
					while(rs1.next())
					{
						bookingsCount=rs1.getInt(1);
						break;
					}
					
					while(rs2.next())
					{
						totalSeats=rs2.getInt(1);
					}
					
					availableSeats=totalSeats-bookingsCount;
					conn.close();
			    }
			    
				catch (SQLException e) {
				
					log.fatal(e);
			}
		
			return availableSeats;
		}
		
		
		//Update Booking Details After Reservation
		public boolean updateBookings(int serviceNumber,String date) {
			
				ServicesDAO dao=new ServicesDAO();
			 	Connection con = null; 
		        PreparedStatement ps = null;
		        String url="jdbc:mysql://localhost:3306/travelline";
				String username="root";
				String pass="tiger";
				
				Logger log=dao.getLogger();
				
				int result=0;
				boolean status=false;
		        try{  
		        	Class.forName("com.mysql.cj.jdbc.Driver");
					con = DriverManager.getConnection(url,username,pass); 
		        }
		        catch(Exception e)
		        {
		        	log.fatal(e);
		        }  
		        
		        try{
		        	ps=con.prepareStatement("insert into travelline.booking_updates(service_no,booking_date) values(?,?)");  
		            ps.setInt(1,serviceNumber);  
		            ps.setString(2, date);
		           result=ps.executeUpdate();  
		           
		           if(result!=0)
		           {
		        	   status=true;
		           }
		              
		            con.close();  
		        }
		        catch(Exception e)
		        {
		        	log.fatal(e);
		        }		        
		  return status;
		}

		public int generateTicketNumber() {
			
			ServicesDAO dao=new ServicesDAO();
			Connection conn = null;
			PreparedStatement ps = null;
			String url="jdbc:mysql://localhost:3306/travelline";
			String username="root";
			String pass="tiger";
			
			Logger log=dao.getLogger();
			
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,username,pass);
			} 
			catch (ClassNotFoundException e)
			{
				log.fatal(e);
			}
			catch (SQLException e) 
			{
				log.fatal(e);
			}
			
			int ticketNo=0;
			try {
			
				ps=conn.prepareStatement("select max(ticket_no) from travelline.reservations");
				
				ResultSet rs=ps.executeQuery();
				
				while(rs.next()) {
					ticketNo=rs.getInt(1);
					ticketNo++;
				}
				
				
			}
			catch (SQLException e) {
				
				log.fatal(e);
			}
			
			return ticketNo;
		}

		public List<Services> getCurrentServiceDetails(int serviceNumber) {
			
			ServicesDAO dao=new ServicesDAO();
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs=null;
			String url="jdbc:mysql://localhost:3306/travelline";
			String username="root";
			String pass="tiger";
			
			Logger log=dao.getLogger();
			
			List<Services> currentServiceList = new ArrayList<>();
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,username,pass);
			} 
			catch (ClassNotFoundException e)
			{
				log.fatal(e);
			}
			catch (SQLException e) 
			{
				log.fatal(e);
			}
		
		try {
			ps=conn.prepareStatement("select * from services where service_no=?");
			ps.setInt(1, serviceNumber);
			rs= ps.executeQuery();
			
			while(rs.next()) 
			{
				currentServiceList.add(new Services(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getString(6),rs.getInt(8),rs.getInt(7)));
			}
					conn.close();
		
			} catch (SQLException e) {
		
				log.fatal(e);
			}

		return currentServiceList;
	
		}

		public boolean makeReservations(String name, int age, String gender, String phoneNumber, String email,
				int ticketNumber,String date, int serviceNumber, String source, String destination, String type, String startTime,
				String endTime, int fare) {
			
			ServicesDAO dao=new ServicesDAO();
			Connection conn = null;
			PreparedStatement ps = null;
			boolean status=false;
			String url="jdbc:mysql://localhost:3306/travelline";
			String username="root";
			String pass="tiger";
			
			Logger log=dao.getLogger();
			
			ArrayList<Reservations> reservationList = new ArrayList<>();
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection(url,username,pass);
			} 
			catch (ClassNotFoundException e)
			{
				log.fatal(e);
			}
			catch (SQLException e) 
			{
				log.fatal(e);
			}

			
			try {
					
					ps=conn.prepareStatement("insert into travelline.reservations values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
					ps.setString(1,name);
					ps.setInt(2,age);
					ps.setString(3,gender);
					ps.setString(4,phoneNumber);
					ps.setString(5,email);
					ps.setInt(6,ticketNumber);
					ps.setString(7, date);
					ps.setInt(8, serviceNumber);
					ps.setString(9, source);
					ps.setString(10, destination);
					ps.setString(11,type);
					ps.setString(12,startTime);
					ps.setString(13,endTime);
					ps.setInt(14, fare);
					
					ps.executeUpdate();
					
					ResultSet rs=ps.executeQuery("select * from reservations");
					
					while(rs.next()) 
					{
						reservationList.add(new Reservations(rs.getString(1),  rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),rs.getInt(6),rs.getString(7),rs.getInt(8),rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13),rs.getInt(14)));
						status=true;
					}

				conn.close();
				
			} catch (SQLException e) {
				log.fatal(e);
				
			}
		
			return status;
		}
}
