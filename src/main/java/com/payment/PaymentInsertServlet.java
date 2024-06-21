package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentInsertServlet")
public class PaymentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// save variable values.
		String reservationID = request.getParameter("reservationID");
		String accountNumber = request.getParameter("accountNumber");
		String pricePerSeat = request.getParameter("paymentAmount");
		String NoOfSeats = request.getParameter("noOfSeats");
		String paymentOption = request.getParameter("paymentOption");
		String cardHolder = request.getParameter("cardHolderName");
		String cardNumber = request.getParameter("cardNumber");
		String expDate = request.getParameter("expiary");
		String cvc = request.getParameter("cvc");

		boolean isTrue;

		isTrue = PaymentDbUtil.insertPayment(reservationID, accountNumber, pricePerSeat, NoOfSeats, paymentOption,
				cardHolder, cardNumber, cvc, expDate);

		if (isTrue == true) {
			/*
			List<Payment> payment = PaymentDbUtil.getPaymentDetails(reservationID);
			request.setAttribute("PaymentDetails", payment);
			
			RequestDispatcher dis = request.getRequestDispatcher("paymentDetails.jsp");
			dis.forward(request, response);
			*/
			
			RequestDispatcher dis = request.getRequestDispatcher("checkPayment.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
