package com.payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnection;

public class PaymentDbUtil {

	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess = false;

	public static List<Payment> validatepayment(String rID) {

		ArrayList<Payment> pay = new ArrayList<>();

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			int convertedReservationID = Integer.parseInt(rID);

			String sql = "SELECT * FROM payment WHERE reservationID = '" + convertedReservationID + "' ;";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int paymentID = rs.getInt(1);
				String accountNumber = rs.getString(2);
				double totalAmount = rs.getDouble(3);
				String paymentOption = rs.getString(4);
				String cardNumber = rs.getString(5);
				String cardHolder = rs.getString(6);
				int cvc = rs.getInt(7);
				String expDate = rs.getString(8);
				int reservationID = rs.getInt(9);
				
				Payment p = new Payment(paymentID, accountNumber, totalAmount, paymentOption, cardNumber,
						cardHolder, cvc, expDate, reservationID);
				pay.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return pay;
	}

	

	public static boolean insertPayment(String reservationID, String accountNumber, String pricePerSeat, String noOfSeats, 
			String paymentOption, String cardHolder, String cardNumber, String cvc, String expDate) {

		try {

			con = DBConnection.getConnection();
			stmt = con.createStatement();
			int convertedNumberOfSeats = Integer.parseInt(noOfSeats);
			int convertedReservationID = Integer.parseInt(reservationID);
			double convertedPaymentAmount = Double.parseDouble(pricePerSeat) * convertedNumberOfSeats;
			int convertedCVC = Integer.parseInt(cvc);

			String sql = "INSERT INTO payment VALUES(0, '"+accountNumber+"', '"+convertedPaymentAmount+"', '"+paymentOption+"' , '"+cardNumber+"', '"+cardHolder+"' , '"+convertedCVC+"' ,'"+expDate+"', '"+convertedReservationID+"');";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	public static boolean UpdatePayment(String paymentID, String reservationID, String accountNumber,
			String paymentAmount, String paymentOption, String cardHolder, String cardNumber, String cvc , String expDate) {

		int convertedReservationID = Integer.parseInt(reservationID);
		double convertedAmount = Double.parseDouble(paymentAmount);
		int convertedCVC = Integer.parseInt(cvc);
		int convertedPaymentID = Integer.parseInt(paymentID);

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "UPDATE payment SET accountNumber = '"+accountNumber+"', totalAmount = '"+convertedAmount+"', paymentOption = '"+paymentOption+"' , cardNumber = '"+cardNumber+"', cardHolder = '"+cardHolder+"', cvc = '"+convertedCVC+"', expDate = '"+expDate+"' , reservationID = '"+convertedReservationID+"' WHERE paymentID = '"+convertedPaymentID+"';";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	public static List<Payment> getPaymentDetails(String id) {

		int convertedID = Integer.parseInt(id);

		ArrayList<Payment> pay = new ArrayList<>();

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment Where paymentID = '" + convertedID + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int paymentID = rs.getInt(1);
				String accountNumber = rs.getString(2);
				double totalAmount = rs.getDouble(3);
				String paymentOption = rs.getString(4);
				String cardNumber = rs.getString(5);
				String cardHolder = rs.getString(6);
				int cvc = rs.getInt(7);
				String expDate = rs.getString(8);
				int reservationID = rs.getInt(9);

				Payment p = new Payment(paymentID, accountNumber, totalAmount, paymentOption, cardNumber,
						cardHolder, cvc, expDate, reservationID);

				pay.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return pay;

	}
	
	
	public static boolean DeletePayment(String id)
	{
		int convertedID = Integer.parseInt(id);
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
          
			String sql = "delete from payment where paymentID = '"+convertedID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
