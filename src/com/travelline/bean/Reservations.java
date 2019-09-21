package com.travelline.bean;

public class Reservations {
	
	
	
	private String name;
	private int age;
	private String gender; 
	private String phoneNumber;
	private String email;
	private int ticketNumber;
	private String doj;
	private int serviceNumber;
	private String source;
	private String destination;
	private String type;
	private String startTime;
	private String endTime;
	private int ticketFare;
	
	
	public Reservations(String name, int age, String gender, String phoneNumber, String email, int ticketNumber,String doj,
			int serviceNumber, String source, String destination, String type, String startTime,
			String endTime, int ticketFare) {
		super();
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.ticketNumber = ticketNumber;
		this.doj=doj;
		this.serviceNumber = serviceNumber;
		this.source = source;
		this.destination = destination;
		this.type = type;
		this.startTime = startTime;
		this.endTime = endTime;
		this.ticketFare = ticketFare;
	}


	public Reservations() {
		
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getTicketNumber() {
		return ticketNumber;
	}


	public void setTicketNumber(int ticketNumber) {
		this.ticketNumber = ticketNumber;
	}


	public int getServiceNumber() {
		return serviceNumber;
	}


	public void setServiceNumber(int serviceNumber) {
		this.serviceNumber = serviceNumber;
	}


	public String getSource() {
		return source;
	}


	public void setSource(String source) {
		this.source = source;
	}


	public String getDestination() {
		return destination;
	}


	public void setDestination(String destination) {
		this.destination = destination;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}

	public String getStartTime() {
		return startTime;
	}


	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}


	public String getEndTime() {
		return endTime;
	}


	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}


	public int getTicketFare() {
		return ticketFare;
	}


	public void setTicketFare(int ticketFare) {
		this.ticketFare = ticketFare;
	}


	public String getDoj() {
		return doj;
	}


	public void setDoj(String doj) {
		this.doj = doj;
	}
	
	
	
	

}
