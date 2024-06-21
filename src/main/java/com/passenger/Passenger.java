package com.passenger;

public class Passenger {
	private int pid;
	private String fname;
	private String lname;
	private String pnumber;
	private int age;
	private String email;
	private String city;
	private String username;
	private String pwd;
	
	public Passenger(int pid, String fname, String lname, int age, String city, String pnumber, String email,String username,
			String pwd) {
		this.pid = pid;
		this.fname = fname;
		this.lname = lname;
		this.age = age;
		this.pnumber = pnumber;
		this.email = email;
		this.city = city;
		this.username = username;
		this.pwd = pwd;

	}

	public int getPid() {
		return pid;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getPnumber() {
		return pnumber;
	}

	public String getEmail() {
		return email;
	}

	public String getCity() {
		return city;
	}

	public String getUsername() {
		return username;
	}

	public String getPwd() {
		return pwd;
	}

	public int getAge() {
		return age;
	}
	
	
}
