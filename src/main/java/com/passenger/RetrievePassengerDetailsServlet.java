package com.passenger;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RetrievePassengerDetailsServlet")
public class RetrievePassengerDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Passenger> passengersDetails = PassengerDBUtil.retrievePassengers();
		request.setAttribute("passengersDetails", passengersDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("passengerAll.jsp");
		dis.forward(request, response);
	}
}
