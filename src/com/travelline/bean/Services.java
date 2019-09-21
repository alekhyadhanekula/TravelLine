package com.travelline.bean;

public class Services {
	
	private int serviceNumber;
	private String source;
	private String destination;
	private String type;
	private String startTime;
	private String endTime;
	private int ticketFare;
	private int seatsCapacity;
	private String doj;
	
	public Services(int serviceNumber, String source, String destination, String type, String startTime, String endTime,
			int ticketFare, int seatsCapacity) {
		super();
		this.serviceNumber = serviceNumber;
		this.source = source;
		this.destination = destination;
		this.type = type;
		this.startTime = startTime;
		this.endTime = endTime;
		this.ticketFare = ticketFare;
		this.seatsCapacity = seatsCapacity;
	}


	public Services(int int1, String string, String string2, String string3, String string4, String string5, int int2,
			int int3, String doj) {
		
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

	public int getSeatsCapacity() {
		return seatsCapacity;
	}

	public void setSeatsCapacity(int seatsCapacity) {
		this.seatsCapacity = seatsCapacity;
	}


	public String getDoj() {
		return doj;
	}


	public void setDoj(String doj) {
		this.doj = doj;
	}

	
}