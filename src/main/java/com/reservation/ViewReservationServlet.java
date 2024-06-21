package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ViewReservationServlet")
public class ViewReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String reservationID = request.getParameter("passengerID");
		
		List<Reservation> reservationDetails = ReservationDBUtil.getReservationDetails(reservationID);
		request.setAttribute("reservationDetails", reservationDetails);
		
		RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
		dis.forward(request, response);
	}

}
