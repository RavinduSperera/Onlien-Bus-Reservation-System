<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Info</title>

<!--Font awesome cdn link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!--Custom css file link-->
<link rel="stylesheet" href="style.css">

<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
	height: auto;
}

td, th {
	border: 1px solid #d3ae7e;
	text-align: left;
	padding: 8px;
	font-size: 1.5rem;
}

tr:nth-child(even) {
	background-color: #d3ae7e;
}
</style>

</head>
<body>
	<!--Header section starts-->
	<header>

		<input type="checkbox" name="" id="toggler"> <label
			for="toggler" class="fas fa-bars"> </label> <a href="#" class="logo">Bus<span>Mate</span></a>
		<nav class="navbar">
			<a href = "index.jsp">Home</a>
            <a href = "index.jsp#about">About</a>
            <a href = "index.jsp#reservations">Reservations</a>
            <a href = "index.jsp#review">Review</a>
            <a href = "index.jsp#contact">Contact</a>
		</nav>
		
		<!-- Getting values to take to another jsp -->

		<div class="icons">
			<a href="passengerLogin.jsp" class="fas fa-heart"></a> 
			<a href="passengerLogin.jsp" class="fas fa-shopping-cart"></a> 
			<a href="passengerLogin.jsp" class="fas fa-user"></a>
		</div>
	</header>
	<!--Header section ends-->

	<!--Login Section Starts-->
	<section class="login" id="login">


		<h1 class="heading">
			<span>Payment</span> Details
		</h1>
		<div class="row">
			<form>
				<table>
					<tr>
						<th>Payment ID</th>
						<th>Account Number</th>
						<th>Total Amount</th>
						<th>Payment Option</th>
						<th>Card Number</th>
						<th>Card Holder</th>
						<th>CVC</th>
						<th>Expiry Date</th>
						<th>Reservation ID</th>
					</tr>
					<c:forEach var="payment" items="${PaymentDetails }">

						<c:set var="paymentID" value="${payment.paymentID}" />
						<c:set var="accountNumber" value="${payment.accountNumber}" />
						<c:set var="totalAmount" value="${payment.totalAmount}" />
						<c:set var="paymentOption" value="${payment.paymentOption}" />
						<c:set var="cardNumber" value="${payment.cardNumber}" />
						<c:set var="cardHolder" value="${payment.cardHolder}" />
						<c:set var="cvc" value="${payment.cvc}" />
						<c:set var="expDate" value="${payment.expDate}" />
						<c:set var="reservationID" value="${payment.reservationID}" />

						<tr>
							<td>${payment.paymentID }</td>
							<td>${payment.accountNumber }</td>
							<td>${payment.totalAmount }</td>
							<td>${payment.paymentOption }</td>
							<td>${payment.cardNumber }</td>
							<td>${payment.cardHolder }</td>
							<td>${payment.cvc }</td>
							<td>${payment.expDate }</td>
							<td>${payment.reservationID }</td>
						</tr>
					</c:forEach>
				</table>

				<c:url value="paymentUpdate.jsp" var="paymentUpdate">
					<c:param name="paymentID" value="${paymentID}" />
					<c:param name="accountNumber" value="${accountNumber}" />
					<c:param name="totalAmount" value="${totalAmount}" />
					<c:param name="paymentOption" value="${paymentOption}" />
					<c:param name="cardNumber" value="${cardNumber}" />
					<c:param name="cardHolder" value="${cardHolder}" />
					<c:param name="cvc" value="${cvc}" />
					<c:param name="expDate" value="${expDate}" />
					<c:param name="reservationID" value="${reservationID}" />
				</c:url>

				<c:url value="paymentDelete.jsp" var="paymentDelete">
					<c:param name="paymentID" value="${paymentID}" />
					<c:param name="accountNumber" value="${accountNumber}" />
					<c:param name="totalAmount" value="${totalAmount}" />
					<c:param name="paymentOption" value="${paymentOption}" />
					<c:param name="cardNumber" value="${cardNumber}" />
					<c:param name="cardHolder" value="${cardHolder}" />
					<c:param name="cvc" value="${cvc}" />
					<c:param name="expDate" value="${expDate}" />
					<c:param name="reservationID" value="${reservationID}" />
				</c:url>
				
				<br>

    			<span class = "paymentDelete">
    				<a href = "${paymentDelete}">
    					<input type = "button" name = "delete" value = "Delete Payment" class = "btn">
    				</a>
    	
    	
    				<a href = "${paymentUpdate}">
    					<input type = "button" name = "update" value = "Update Payment" class = "btn">
    				</a>
    			</span>

			</form>
		</div>

	</section>
	<!--Login Section Ends-->

	<!--Footer Section Starts-->

	<section class="footer">
		<div class="box-container">
			<div class="box">
				<h3>Quick Links</h3>
				<a href="/index.html#home">Home</a> <a href="/index.html#about">About</a>
				<a href="/index.html#reservations">Reservations</a> <a
					href="/index.html#review">Review</a> <a href="/index.html#contacts">Contact
					Us</a>
			</div>

			<div class="box">
				<h3>External Links</h3>
				<a href="#">My Account</a> <a href="#">My Order</a> <a href="#">My
					Favourites</a>
			</div>

			<div class="box">
				<h3>Locations</h3>
				<a href="#">Galle</a> <a href="#">Colombo</a> <a href="#">Kandy</a>
				<a href="#">Malabe</a> <a href="#">Kaduwela</a>
			</div>

			<div class="box">
				<h3>Contact Info</h3>
				<a href="#">+94 771196408</a> <a href="#">busmate@gmail.com</a> <a
					href="#">No:21/1, Flower Lane, Galle.</a> <img
					src="/images/creditCard.png" alt="">
			</div>
		</div>
		<div class="credit">
			Created By <span> Group Project: SE/OOP/2023/S2/MLB/WD/G265 </span>
		</div>
	</section>
	<!--Footer Section Ends-->

</body>
</html>