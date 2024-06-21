package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/InsertReservationServlet")
public class InsertReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// saving values, coming from the JSP
		
		// error is in this line
		
		String passengerID = request.getParameter("pID");
		String departure = request.getParameter("from");
		String destination = request.getParameter("to");
		String NoOfSeats = request.getParameter("sNo");
		
		boolean isTrue;
		
		isTrue = ReservationDBUtil.insertReservation(passengerID,departure, destination, NoOfSeats);
		
		if(isTrue == true) {
			
			List<Reservation> reservationDetails = ReservationDBUtil.getReservationDetails(passengerID);
			request.setAttribute("reservationDetails", reservationDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}

