package com.reservation;

public class Reservation {
	private int reservationID;
	private int seatNo;
	private int pid;
	private String reservationTime;
	private int busID;
	private String busNumber;
	private String busType;
	private String driverFname;
	private String driverLname;
	private String departure;
	private String destination;
	private double pricePerTicket;
	
	public Reservation(int reservationID, int seatNo,String reservationTime, String busNumber,
			String busType, String driverFname, String driverLname, String departure, String destination,
			double pricePerTicket) {
		this.reservationID = reservationID;
		this.seatNo = seatNo;
		this.reservationTime = reservationTime;
		this.busNumber = busNumber;
		this.busType = busType;
		this.driverFname = driverFname;
		this.driverLname = driverLname;
		this.departure = departure;
		this.destination = destination;
		this.pricePerTicket = pricePerTicket;
	}

	public Reservation(int reservationID, int seatNo, int pid, String reservationTime, int busID) {
		this.reservationID = reservationID;
		this.seatNo = seatNo;
		this.pid = pid;
		this.reservationTime = reservationTime;
		this.busID = busID;
	}
	
	public String getBusNumber() {
		return busNumber;
	}

	public String getBusType() {
		return busType;
	}

	public String getDriverFname() {
		return driverFname;
	}

	public String getDriverLname() {
		return driverLname;
	}

	public String getDeparture() {
		return departure;
	}

	public String getDestination() {
		return destination;
	}

	public double getPricePerTicket() {
		return pricePerTicket;
	}

	public int getReservationID() {
		return reservationID;
	}

	public int getSeatNo() {
		return seatNo;
	}

	public int getPid() {
		return pid;
	}

	public String getReservationTime() {
		return reservationTime;
	}

	public int getBusID() {
		return busID;
	}
}
