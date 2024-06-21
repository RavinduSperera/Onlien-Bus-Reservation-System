package com.passenger;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePassengerServlet")
public class UpdatePassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userID");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phoneNumber = request.getParameter("pnumber");
		String city = request.getParameter("city");
		String age = request.getParameter("age");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue = PassengerDBUtil.updatePassenger(id, fname, lname, age, city, phoneNumber, email, username, password);
		
		if(isTrue == true) {
			List<Passenger> passengerDetails = PassengerDBUtil.getPassengerDetails(id);
			request.setAttribute("passengerDetails", passengerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("updateUnsuccess.jsp");
			dis.forward(request, response);
		}
				
	}

}
