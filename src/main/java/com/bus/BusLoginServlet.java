package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BusLoginServlet")
public class BusLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String busNumber = request.getParameter("busNumber");
		
		try {
			List<BusDetails> busDetails = BusDBUtil.getBusDetails(busNumber);
			request.setAttribute("busDetails", busDetails);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("busDetails.jsp");
		dis.forward(request, response);
		
	}

}
