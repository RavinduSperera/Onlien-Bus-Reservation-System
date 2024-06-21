package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBusServlet")
public class UpdateBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String busid = request.getParameter("busID");
		String busnumber = request.getParameter("busNumber");
		String type = request.getParameter("type");
		String TotalSeats = request.getParameter("totalSeats");
		String AvailableSeats = request.getParameter("availableSeats");
		
		boolean IsTrue;
		
		IsTrue = BusDBUtil.updateBus(busid, busnumber , type, TotalSeats, AvailableSeats);
		
		if(IsTrue == true) {
			
			List<BusDetails> busDetails =BusDBUtil.getBusDetails(busnumber);
			request.setAttribute("busDetails", busDetails); 
			
			RequestDispatcher dis = request.getRequestDispatcher("busDetails.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
