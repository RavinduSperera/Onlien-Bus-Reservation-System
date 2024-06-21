package com.bus;

public class BusDetails {
	
	private int busID;
	private String busnumber;
	private String bustype;
	private int totalSeats;
	private int availableSeats;;
	private String fname;
	private String departure;
	private String destination;
	
	public BusDetails(int busID, String busnumber, String bustype, int totalSeats, int availableSeats, String fname,
			String departure, String destination) {
		this.busID = busID;
		this.busnumber = busnumber;
		this.bustype = bustype;
		this.totalSeats = totalSeats;
		this.availableSeats = availableSeats;
		this.fname = fname;
		this.departure = departure;
		this.destination = destination;
	}

	public String getBusnumber() {
		return busnumber;
	}

	public String getBustype() {
		return bustype;
	}

	public int getTotalSeats() {
		return totalSeats;
	}

	public int getAvailableSeats() {
		return availableSeats;
	}

	public String getFname() {
		return fname;
	}

	public String getDeparture() {
		return departure;
	}

	public String getDestination() {
		return destination;
	}

	public int getBusID() {
		return busID;
	}
	
	
	
	

}
