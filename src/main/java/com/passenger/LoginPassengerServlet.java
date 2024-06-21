package com.passenger;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginPassengerServlet")

public class LoginPassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;

		isTrue = PassengerDBUtil.validatePassenger(username, password);

		//validating an admin
		if(isTrue == true && "admin".equals(username)) {
			RequestDispatcher dis = request.getRequestDispatcher("adminHome.jsp");
			dis.forward(request, response);
		}
		
		else if (isTrue == true) {
			List<Passenger> passengerDetails = PassengerDBUtil.getPassenger(username);
			request.setAttribute("passengerDetails", passengerDetails);

			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);

		} else {
			out.println("<script type= 'text/javascript'>");
			out.println("alert('Your username or password is incorrect!');");
			out.println("location= 'passengerLogin.jsp'");
			out.println("</script>");
		}

	}

}
