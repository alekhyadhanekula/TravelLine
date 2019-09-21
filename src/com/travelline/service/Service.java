package com.travelline.service;


import java.util.List;


import com.travelline.bean.Reservations;
import com.travelline.bean.Services;
import com.travelline.dao.ServicesDAO;

public class Service {

	ServicesDAO dao=new ServicesDAO();
	
	public boolean adminLogin(String username, String pass) {
		
		return dao.adminLogin(username, pass);
	}
	
	public boolean addNewAdmin(String name, String pass) {
		
		return dao.addNewAdmin(name,pass);
	}
	
	public int generateServiceNumber() {
		
		
		return dao.generateServiceNumber();
	}

	public boolean addServices(int serviceNumber, String source, String destination,String type, String startTime,
			String endTime, int ticketFare, int seatsCapacity) {

		return dao.addServices(serviceNumber,source,destination,type,startTime,endTime,ticketFare,seatsCapacity);
	}

	public boolean modifyService(int serviceNumber, String source, String destination,String type, String startTime, String endTime,
			int ticketFare, int seatsCapacity) {
		
		return dao.modifyService(serviceNumber,source,destination,type,startTime,endTime,seatsCapacity,ticketFare);
	}

	public boolean removeService(int serviceNumber) {
		
		return dao.cancelService(serviceNumber);
	}

	public List<Reservations> retrieveDetails(int ticketNumber) {
	
		return dao.retrieveTicket(ticketNumber);
	}

	public boolean cancelTicket(int ticketNumber) {
		
		
		return dao.cancelTicket(ticketNumber);
	}

	public boolean addSearchDetails(String source, String destination, String date) {

		return dao.addSearchDetails(source,destination,date);
		
	}

	public List<Services> getRequiredServices(String source, String destination) {
		
		return dao.getRequiredServices(source,destination);
	}

	public int getAvailableSeats(int serviceNumber,String date) {
		
		return dao.getAvailableSeats(serviceNumber,date);
	}

	public int generateTicketNumber() {
		
		return dao.generateTicketNumber();
	}

	public List<Services> getCurrentServiceDetails(int serviceNumber) {
		
		return dao.getCurrentServiceDetails(serviceNumber);
	}

	public boolean updateBookings(int serviceNumber, String date) {
		
		return dao.updateBookings(serviceNumber, date);
	}

	public boolean makeReservations(String name, int age, String gender, String phoneNumber, String email,
			int ticketNumber,String date, int serviceNumber, String source, String destination, String type, String startTime,
			String endTime, int fare) {
		
		return dao.makeReservations(name,age,gender,phoneNumber,email,ticketNumber,date,serviceNumber,source,destination,type,startTime,endTime,fare);
	}

	

	
	
	

}
