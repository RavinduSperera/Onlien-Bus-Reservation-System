package com.passenger;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletePassengerServlet")
public class DeletePassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID = request.getParameter("userID");
		
		boolean isTrue;
		
		isTrue = PassengerDBUtil.deletePassenger(userID);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("insertPassenger.jsp");
			dispatcher.forward(request, response);
		}else {
			List<Passenger> passengerDetails = PassengerDBUtil.getPassengerDetails(userID);
			request.setAttribute("passengerDetails", passengerDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
		}
	}

}
