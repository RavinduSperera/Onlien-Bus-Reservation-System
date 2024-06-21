package com.bus;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnection;

public class BusDBUtil {

	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;

	public static List<Bus> validate(String busNumber) {

		ArrayList<Bus> bus = new ArrayList<>();

		try {

			con = DBConnection.getConnection();
			stat = con.createStatement();

			String sql = "SELECT * from bus where busNumber='" + busNumber + "'";

			rs = stat.executeQuery(sql);

			if (rs.next()) {
				int busId = rs.getInt(1);
				String busnumber = rs.getString(2);
				String type = rs.getString(3);
				int did = rs.getInt(4);
				int totalSeat = rs.getInt(5);
				int availableSeat = rs.getInt(6);
				int routeId = rs.getInt(7);

				Bus b = new Bus(busId, busnumber, type, did, totalSeat, availableSeat, routeId);
				bus.add(b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return bus;

	}

	private static boolean IsSuccess = false;

	public static boolean Insertbus(String busNumber, String busType, String driverID, String totalSeats,
			String availableSeats, String busRoute) {

		try {

			con = DBConnection.getConnection();
			stat = con.createStatement();

			int convertedtotalSeats = Integer.parseInt(totalSeats);
			int convertedavailableSeats = Integer.parseInt(availableSeats);
			int converteddriverID = Integer.parseInt(driverID);
			int convertedBusRoute = Integer.parseInt(busRoute);

			String sql = "INSERT INTO bus VALUES (0,'"+busNumber+"', '"+busType+"', '"+converteddriverID+"', '"+convertedtotalSeats+"', '"+convertedavailableSeats+"', '"+convertedBusRoute+"')";
			int rs = stat.executeUpdate(sql);

			if (rs > 0) {
				IsSuccess = true;
			} else {
				IsSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return IsSuccess;

	}

	public static boolean updateBus(String busID, String busNumber,  String busType, String totalSeats,
			String availableSeats) {

		try {
			con = DBConnection.getConnection();
			stat = con.createStatement();

			int convertedtotalSeat = Integer.parseInt(totalSeats);
			int covertedBusID = Integer.parseInt(busID);
			int convertedavailableSeats = Integer.parseInt(availableSeats);

			String sql = "UPDATE bus SET busNumber = '"+busNumber+"' , busType = '"+busType+"', totalSeats = '"+convertedtotalSeat+"', availableSeats = '"+convertedavailableSeats+"' WHERE busID = '"+covertedBusID+"';";

			int rs = stat.executeUpdate(sql);

			if (rs > 0) {
				IsSuccess = true;
			} else {
				IsSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return IsSuccess;
	}

	public static List<BusDetails> getBusDetails(String busNumber) {

		ArrayList<BusDetails> busdetails = new ArrayList<>();

		try {

			con = DBConnection.getConnection();
			stat = con.createStatement();

			String sql = "SELECT b.busID, b.busNumber, b.busType, b.totalSeats, b.availableSeats, d.fname, br.departure, br.destination FROM bus b INNER JOIN busroute br ON br.routeID = b.busRoute INNER JOIN driver d ON d.driverID = b.driverID WHERE b.busNumber = '"+busNumber+"';";
			rs = stat.executeQuery(sql);

			while (rs.next()) {
				int busID = rs.getInt(1);
				String busnumber = rs.getString(2);
				String bustype = rs.getString(3);
				int totalSeats = rs.getInt(4);
				int availableSeats = rs.getInt(5);
				String fname = rs.getString(6);
				String departure = rs.getString(7);
				String destination = rs.getString(8);
				
				BusDetails busDetails = new BusDetails(busID, busnumber, bustype, totalSeats, availableSeats, fname, departure, destination);

				busdetails.add(busDetails);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return busdetails;
	}

	public static boolean deleteBus(String id) {

		int convertedBusID = Integer.parseInt(id);

		try {

			con = DBConnection.getConnection();
			stat = con.createStatement();

			String sql = "DELETE FROM bus WHERE busID='" + convertedBusID + "' ;";
			int rs = stat.executeUpdate(sql);

			if (rs > 0) {
				IsSuccess = true;
			} else {
				IsSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return IsSuccess;
	}
}
