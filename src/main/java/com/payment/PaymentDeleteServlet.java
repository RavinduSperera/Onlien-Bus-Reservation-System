package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentDeleteServlet")
public class PaymentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paymentid = request.getParameter("paymentid");
		boolean isTrue;
		
		isTrue = PaymentDbUtil.DeletePayment(paymentid);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("paymentInsert.jsp");
			dis.forward(request, response);
		} else {
			
			List<Payment> paymentDetails = PaymentDbUtil.getPaymentDetails(paymentid);
			request.setAttribute("PaymentDetails" ,paymentDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("PaymentDetails.jsp");
			dis.forward(request, response);
		}
		
	}

}
