<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reservation Info</title>

<!--Font awesome cdn link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!--Custom css file link-->
<link rel="stylesheet" href="style.css">

<style>

.btn-profile{
    display: inline-block;
    margin-top: 1rem;
    border-radius: 3rem;
    background: #333;
    color: #fff;
    padding: .9rem 3.5rem;
    cursor: pointer;
    font-size: 1.7rem;
}
    
.btn-profile:hover{
    background:var(--brown)
}
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
.button-center{
	padding-left: 24rem;
	display: inline-block;
	
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
			<span>Reservation</span> Details
		</h1>
		<div class="row">
			<form>
				<table>
					<tr>
						<th>Reservation ID</th>
						<th>Number of Reserved Seats</th>
						<th>Reservation Time</th>
						<th>Bus Number</th>
						<th>Bus Type</th>
						<th>Driver FirstName</th>
						<th>Driver LastName</th>
						<th>Departure City</th>
						<th>Destination</th>
						<th>Price Per Ticket</th>
					</tr>
					<c:forEach var="reservation" items="${reservationDetails }">

						<c:set var="rid" value="${reservation.reservationID}" />
						<c:set var="busNumber" value="${reservation.busNumber}" />
						<c:set var="departure" value="${reservation.departure}" />
						<c:set var="destination" value="${reservation.destination}" />
						<c:set var="seatNo" value="${reservation.seatNo}" />
						<c:set var="pricePerTicket" value="${reservation.pricePerTicket}" />

						<tr>
							<td>${reservation.reservationID }</td>
							<td>${reservation.seatNo }</td>
							<td>${reservation.reservationTime }</td>
							<td>${reservation.busNumber }</td>
							<td>${reservation.busType }</td>
							<td>${reservation.driverFname }</td>
							<td>${reservation.driverLname }</td>
							<td>${reservation.departure }</td>
							<td>${reservation.destination }</td>
							<td>${reservation.pricePerTicket }</td>
						</tr>
					</c:forEach>
				</table>

				<c:url value="updateReservation.jsp" var="reservationUpdate">
					<c:param name="rid" value="${rid}" />
					<c:param name="busNumber" value="${busNumber}" />
					<c:param name="departure" value="${departure}" />
					<c:param name="destination" value="${destination}" />
					<c:param name="seatNo" value="${seatNo}" />
				</c:url>

				<c:url value="deleteReservation.jsp" var="reservationDelete">
					<c:param name="rid" value="${rid}" />
					<c:param name="busNumber" value="${busNumber}" />
					<c:param name="destination" value="${destination}" />
					<c:param name="seatNo" value="${seatNo}" />
				</c:url>
				
				<c:url value="paymentInsert.jsp" var="paymentInsert">
					<c:param name="rid" value="${rid}" />
					<c:param name="busNumber" value="${busNumber}" />
					<c:param name="destination" value="${destination}" />
					<c:param name="seatNo" value="${seatNo}" />
					<c:param name="pricePerTicket" value="${pricePerTicket}" />
				</c:url>
				
				<br>
				
				<h3> Note: Please Remember the Reservation ID </h3> <br>

    			
    				<a href = "${reservationDelete}">
    					<input type = "button" name = "delete" value = "Delete Reservation" class = "btn-profile">
    				</a>
    			
    	
    				<a href = "${reservationUpdate}">
    					<input type = "button" name = "update" value = "Update Reservation" class = "btn-profile">
    				</a>
    			<div class = "button-center">
    				<a href = "${paymentInsert}">
    					<input type = "button" name = "update" value = "Pay Reservation" class = "btn-profile">
    				</a>
    			</div>

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