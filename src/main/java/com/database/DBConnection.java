package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url = "jdbc:mysql://localhost:3306/projectdb";
	private static String user = "root";
	private static String password = "1234ashi";
	
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, password);
		}catch(Exception e) {
			System.out.println("Database Connection is not Success! ");		
		}
		
		return con;
	}
}
