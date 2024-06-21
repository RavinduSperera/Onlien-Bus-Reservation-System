package com.passenger;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.database.DBConnection;

public class PassengerDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet result = null;
	private static boolean isSuccess;
	
	// Validate Method
	public static boolean validatePassenger(String username, String password) {
		
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM passenger WHERE username = '" + username + "' AND password = '" + password
					+ "'";
			result = stmt.executeQuery(sql);
			
			if(result.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Retrieving All passenger Details
	public static List<Passenger> retrievePassengers(){
		ArrayList<Passenger> passengers = new ArrayList<>();
		
		try {
			// Database Connection
			con = DBConnection.getConnection();
			// Validate...
			stmt = con.createStatement();

			String sql = "SELECT * FROM passenger;";

			result = stmt.executeQuery(sql);
			
			while(result.next()) {
				int id = result.getInt(1);
				String fname = result.getString(2);
				String lname = result.getString(3);
				int age = result.getInt(4);
				String city = result.getString(5);
				String phoneNumber = result.getString(6);
				String email = result.getString(7);
				String user = result.getString(8);
				String pass = result.getString(9);
				
				Passenger passengerX = new Passenger(id, fname, lname, age, city, phoneNumber, email, user, pass);
				passengers.add(passengerX);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return passengers;
	}

	//Retrieving passenger details by his/her user name
	public static List<Passenger> getPassenger(String username) {

		ArrayList<Passenger> passenger = new ArrayList<>();

		try {
			// Database Connection
			con = DBConnection.getConnection();
			// Validate...
			stmt = con.createStatement();

			String sql = "SELECT * FROM passenger WHERE username = '" + username + "'";

			result = stmt.executeQuery(sql);
			
			while(result.next()) {
				int id = result.getInt(1);
				String fname = result.getString(2);
				String lname = result.getString(3);
				int age = result.getInt(4);
				String city = result.getString(5);
				String phoneNumber = result.getString(6);
				String email = result.getString(7);
				String user = result.getString(8);
				String pass = result.getString(9);
				
				Passenger passengerX = new Passenger(id, fname, lname, age, city, phoneNumber, email, user, pass);
				passenger.add(passengerX);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return passenger;
	}

	// Insert Passenger Method
	public static boolean insertPassenger(String fname, String lname, String age, String city, String pnumber,
			String email, String username, String password) {

		isSuccess = false;

		try {
			// Database Connection
			con = DBConnection.getConnection();

			// Inserting...
			stmt = con.createStatement();

			String sql = "INSERT INTO passenger VALUES(0, '" + fname + "', '" + lname + "', '" + age + "', '" + city
					+ "', '" + pnumber + "', '" + email + "', '" + username + "', '" + password + "')";
			int result = stmt.executeUpdate(sql);

			// Success?
			if (result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// Update Passenger Method
	public static boolean updatePassenger(String id, String fname, String lname, String age, String city, String phone,
			String email, String username, String password) {
		
		int convertedID = Integer.parseInt(id);

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "UPDATE passenger SET fname = '" + fname + "', lname = '" + lname + "', age = '" + age
					+ "', city = '" + city + "', pnumber = '" + phone + "', email = '" + email + "', username = '"
					+ username + "' , password = '" + password + "'" + "WHERE pid = '" + convertedID + "'";

			int result = stmt.executeUpdate(sql);

			if (result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// Data Retrieving
	public static List<Passenger> getPassengerDetails(String passengerID) {

		int convertedID = Integer.parseInt(passengerID);
		ArrayList<Passenger> passenger = new ArrayList<>();

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM passenger WHERE pid = '" + convertedID + "'";
			result = stmt.executeQuery(sql);

			while (result.next()) {
				int id = result.getInt(1);
				String fname = result.getString(2);
				String lname = result.getString(3);
				int age = result.getInt(4);
				String city = result.getString(5);
				String phoneNumber = result.getString(6);
				String email = result.getString(7);
				String username = result.getString(8);
				String password = result.getString(9);

				Passenger passengerX = new Passenger(id, fname, lname, age, city, phoneNumber, email, username,
						password);
				passenger.add(passengerX);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return passenger;
	}

	// Delete Passenger Method
	public static boolean deletePassenger(String id) {

		int convertedID = Integer.parseInt(id);

		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();

			String sql = "DELETE FROM passenger WHERE pid = '" + convertedID + "'";

			int result = stmt.executeUpdate(sql);

			if (result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}
	
	public static boolean insertContactUs(String name, String email, String msg) {
		
		isSuccess = false;

		try {
			// Database Connection
			con = DBConnection.getConnection();

			// Inserting...
			stmt = con.createStatement();

			String sql = "INSERT INTO VALUES(0 , '"+name+"', '"+email+"','"+msg+"');";
			int result = stmt.executeUpdate(sql);

			// Success?
			if (result > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
