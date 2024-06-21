package com.reservation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnection;

public class ReservationDBUtil {
	// creating variables
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// inserting part
	public static boolean insertReservation(String passengerID,String departure, String destination,
			String NoOfSeats) {

		boolean isSuccess = false;
		
		ArrayList<Integer> buses = (ArrayList<Integer>) ReservationDBUtil.getBusID(departure, destination);

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			int convertedSeatNo = Integer.parseInt(NoOfSeats);
			int convertedPassID = Integer.parseInt(passengerID);
			
			int convertedBusID = buses.get(0);

			// sql query
			String sql = "INSERT INTO reservation (reservationID, seatNo, pid, busID) VALUES(0, '" + convertedSeatNo
					+ "', '" + convertedPassID + "', '" + convertedBusID + "');";
			int rs = stmt.executeUpdate(sql); // returning 0 or 1

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

	// updating part
	public static boolean updateReservation(String resvID, String seatNo, String departure, String destination) {
		
		ArrayList<Integer> buses = (ArrayList<Integer>) ReservationDBUtil.getBusID(departure, destination);

		int convertedReservationID = Integer.parseInt(resvID);
		int convertedSeatNo = Integer.parseInt(seatNo);
		int convertedBusID = buses.get(0);

		try {
			// creating database connection
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "UPDATE reservation SET seatNo = '" + convertedSeatNo + "' , busID = '"+convertedBusID+"' WHERE reservationID = '"
					+ convertedReservationID + "';";

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
	// update part ends

	// data-retrieve part - error displaying
	public static List<Reservation> getReservationDetails(String passengerID) {

		int convertedrpID = Integer.parseInt(passengerID);

		ArrayList<Reservation> resveration = new ArrayList<>();

		try {
			// creating database connection
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "SELECT r.reservationID , r.seatNo , r.reservationTime , b.busNumber , b.busType , d.fname, d.lname, br.departure, br.destination , br.price FROM reservation r INNER JOIN passenger p ON r.pid = p.pid INNER JOIN bus b ON r.busID = b.busID INNER JOIN driver d ON b.driverID = d.driverID INNER JOIN busroute br ON br.routeID = b.busRoute WHERE p.pid = '"
					+ convertedrpID + "';";

			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int reservationId = rs.getInt(1);
				int seatNo = rs.getInt(2);
				String reservationTime = rs.getString(3);
				String busNumber = rs.getString(4);
				String busType = rs.getString(5);
				String driverFname = rs.getString(6);
				String driverLname = rs.getString(7);
				String departure = rs.getString(8);
				String destination = rs.getString(9);
				double price = rs.getInt(10);

				Reservation reservation = new Reservation(reservationId, seatNo, reservationTime, busNumber, busType,
						driverFname, driverLname, departure, destination, price);
				resveration.add(reservation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return resveration;
	}

	// deleting part
	public static boolean deleteReservation(String resvID) {
		int convertedResID = Integer.parseInt(resvID);

		try {
			// creating database connection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from reservation where reservationID='" + convertedResID + "'";
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
	// delete ends

	public static List<Integer> getBusID(String departure, String destination) {
		ArrayList<Integer> buses= new ArrayList<>();
		
		try {
			// creating database connection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT b.busID FROM bus b INNER JOIN busroute br ON br.routeID =  b.busRoute WHERE  br.departure = '"+departure+"' AND br.destination = '"+destination+"'";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int BusID = rs.getInt(1);
				buses.add(BusID);
			}	

		} catch (Exception e) {
			e.printStackTrace();
		}

		return buses;
	}
}
