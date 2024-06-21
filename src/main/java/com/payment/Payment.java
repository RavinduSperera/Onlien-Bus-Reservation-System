package com.payment;

public class Payment {
	private int paymentID;
	private String accountNumber;
	private double perTicketPrice;
	private String paymentOption;
	private String cardNumber;
	private String cardHolder;
	private int cvc;
	private String expDate;
	private int reservationID;
	private double totalAmount;
	private int noOfSeats;

	public double getTotalAmount() {
		return totalAmount;
	}

	public int getNoOfSeats() {
		return noOfSeats;
	}
	
	public Payment(int paymentID, String accountNumber, double totalAmount, String paymentOption, String cardNumber, String cardHolder, int cvc, String expDate, int reservationID) {
		this.paymentID = paymentID;
		this.accountNumber = accountNumber;
		this.totalAmount = totalAmount;
		this.paymentOption = paymentOption;
		this.cardNumber = cardNumber;
		this.cardHolder = cardHolder;
		this.cvc = cvc;
		this.expDate = expDate;
		this.reservationID = reservationID;
	}

	public Payment(int paymentID, int reservationID, String accountNumber, double perTicketPrice, String paymentOption,
			String cardHolder, String cardNumber, int cvc, String expDate, int noOfSeats) {

		this.paymentID = paymentID;
		this.reservationID = reservationID;
		this.accountNumber = accountNumber;
		this.perTicketPrice = perTicketPrice;
		this.paymentOption = paymentOption;
		this.cardHolder = cardHolder;
		this.cardNumber = cardNumber;
		this.cvc = cvc;
		this.expDate = expDate;
		this.noOfSeats = noOfSeats;
		this.totalAmount = noOfSeats * perTicketPrice;
	}
	
	public int getPaymentID() {
		return paymentID;
	}

	public int getReservationID() {
		return reservationID;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public double getperTicketPrice() {
		return perTicketPrice;
	}
	
	public double gettotalAmount() {
		return totalAmount;
	}

	public String getPaymentOption() {
		return paymentOption;
	}

	public String getCardHolder() {
		return cardHolder;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public int getCvc() {
		return cvc;
	}

	public String getExpDate() {
		return expDate;
	}

}
