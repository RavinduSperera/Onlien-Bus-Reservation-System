package com.passenger;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertPassengerServlet")
public class InsertPassengerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//To catch values from form
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");
			String age = request.getParameter("age");
			String city = request.getParameter("city");
			String pNumber = request.getParameter("pnumber");
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("pwd");
			
			boolean isTrue;
			isTrue = PassengerDBUtil.insertPassenger(fname, lname, age, city, pNumber, email, username, password);
			
			//Insertion success??  Redirect to a page
			if(isTrue == true) {
				RequestDispatcher dis1 = request.getRequestDispatcher("insertSuccess.jsp");
				dis1.forward(request, response);
			}else {
				RequestDispatcher dis2 = request.getRequestDispatcher("insertUnsuccess.jsp");
				dis2.forward(request, response);
			}
		}
}
