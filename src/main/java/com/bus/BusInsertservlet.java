package com.bus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BusInsertservlet")
public class BusInsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String number = request.getParameter("busNumber");
		String BusType = request.getParameter("busType");
		String drid = request.getParameter("driverID");
		String TotalSeat = request.getParameter("totalSeats");
		String AvailableSeat = request.getParameter("availableSeats");
		String BusRoute = request.getParameter("busRoute");
		
		boolean IsTrue;
		IsTrue = BusDBUtil.Insertbus(number, BusType, drid, TotalSeat, AvailableSeat,BusRoute);
		if(IsTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
