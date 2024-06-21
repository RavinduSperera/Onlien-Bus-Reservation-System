package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentUpdateServlet")
public class PaymentUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paymentid = request.getParameter("paymentid");
		String reservationid= request.getParameter("reservationid");
		String accountnumber = request.getParameter("accountnumber");
		String paymentamount = request.getParameter("paymentamount");
		String paymentoption = request.getParameter("paymentoption");
		String cardholder = request.getParameter("cardholder");
		String cardnumber = request.getParameter("cardnumber");
		String expDate = request.getParameter("expdate");
		String cvc = request.getParameter("cvc");
		
		boolean isTrue ;
		
		isTrue = PaymentDbUtil.UpdatePayment(paymentid, reservationid, accountnumber, paymentamount, paymentoption, cardholder, cardnumber,cvc, expDate);
		
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("checkPayment.jsp");
			dis.forward(request, response);
		}
		
		else {
			
			List<Payment> paymentDetails = PaymentDbUtil.getPaymentDetails(reservationid);
			request.setAttribute("PaymentDetails" ,paymentDetails);
			
			
			RequestDispatcher dis2 = request.getRequestDispatcher("paymentDetails.jsp");
			dis2.forward(request, response);	
		}
	}

}
