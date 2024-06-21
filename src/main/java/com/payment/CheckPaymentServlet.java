package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckPaymentServlet")
public class CheckPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String reservationID = request.getParameter("rID");

		try {
			List<Payment> PaymentDetails = PaymentDbUtil.validatepayment(reservationID);
			request.setAttribute("PaymentDetails", PaymentDetails);
		}catch (Exception e) {
			e.printStackTrace();
		}

		RequestDispatcher dis = request.getRequestDispatcher("paymentDetails.jsp");
		dis.forward(request, response);

	}

}
