package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteBusServlet")
public class DeleteBusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("busID");
		
		boolean IsTrue;
		
		IsTrue = BusDBUtil.deleteBus(id);
		
		
		if(IsTrue == true) { 
			
			RequestDispatcher dis = request.getRequestDispatcher("busInsert.jsp");
			dis.forward(request, response);
			
		}else {
			
			List<BusDetails> busDetails =BusDBUtil.getBusDetails(id);
			request.setAttribute("busDetails", busDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("busDetails.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
