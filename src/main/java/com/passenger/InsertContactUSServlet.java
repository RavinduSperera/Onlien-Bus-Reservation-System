package com.passenger;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertContactUSServlet")
public class InsertContactUSServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String msg = request.getParameter("msg");
		
		boolean isTrue = PassengerDBUtil.insertContactUs(name, email, msg);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("successContact.jsp");
			dis1.forward(request, response);
		} else {
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        out.println("<html><body>");
	        out.println("<h2>Failed to insert data.</h2>");
	        out.println("<p>Please try again later or contact support.</p>");
	        out.println("</body></html>");
	    }
	}
}
