package com.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateReservationServlet")
public class UpdateReservationServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// declaring some variables
		String reservationID = request.getParameter("rsvID");
		String seatNo = request.getParameter("sNo");
		String departure = request.getParameter("from");
		String destination = request.getParameter("to");
		
		boolean isTrue;
		isTrue = ReservationDBUtil.updateReservation(reservationID, seatNo , departure , destination);

		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("reservationView.jsp");
			dis.forward(request, response);
		} else {
			List<Reservation> reservationDetails = ReservationDBUtil.getReservationDetails(reservationID);
			request.setAttribute("reservationDetails", reservationDetails);

			RequestDispatcher dis = request.getRequestDispatcher("reservationDetails.jsp");
			dis.forward(request, response);
		}
	}

}
