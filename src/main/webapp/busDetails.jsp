<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bus Info</title>

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
			<span>Bus</span> Details
		</h1>
		<div class="row">
			<form>
				<table>
					<tr>
						<th>Bus ID</th>
						<th>Bus Number</th>
						<th>Bus Type</th>
						<th>TotalSeats</th>
						<th>Available Seats</th>
						<th>Driver</th>
						<th>Departure</th>
						<th>Destination</th>
						
					</tr>
					<c:forEach var="bus" items="${busDetails }">

						<c:set var="busID" value="${bus.busID}" />
						<c:set var="busnumber" value="${bus.busnumber}" />
						<c:set var="bustype" value="${bus.bustype}" />
						<c:set var="totalSeats" value="${bus.totalSeats}" />
						<c:set var="availableSeats" value="${bus.availableSeats}" />
						<c:set var="fname" value="${bus.fname}" />
						<c:set var="departure" value="${bus.departure}" />
						<c:set var="destination" value="${bus.destination}" />
						
						<tr>
							<td>${bus.busID }</td>
							<td>${bus.busnumber }</td>
							<td>${bus.bustype }</td>
							<td>${bus.totalSeats }</td>
							<td>${bus.availableSeats }</td>
							<td>${bus.fname }</td>
							<td>${bus.departure }</td>
							<td>${bus.destination }</td>
						</tr>
					</c:forEach>
				</table>

				<c:url value="updateBus.jsp" var="updateBus">
					<c:param name="busID" value="${busID}" />
					<c:param name="busnumber" value="${busnumber}" />
					<c:param name="bustype" value="${bustype}" />
					<c:param name="fname" value="${fname}" />
					<c:param name="totalSeats" value="${totalSeats}" />
					<c:param name="availableSeats" value="${availableSeats}" />
					
				</c:url>

				<c:url value="deleteBus.jsp" var="deleteBus">
					<c:param name="busID" value="${busID}" />
					<c:param name="busnumber" value="${busnumber}" />
					<c:param name="bustype" value="${bustype}" />
					<c:param name="fname" value="${fname}" />
					<c:param name="totalSeats" value="${totalSeats}" />
					<c:param name="availableSeats" value="${availableSeats}" />
					
				</c:url>
				
				<br>

    			<span class = "button-delete">
    				<a href = "${deleteBus}">
    					<input type = "button" name = "delete" value = "Delete Bus" class = "btn">
    				</a>
    	
    	
    				<a href = "${updateBus}">
    					<input type = "button" name = "update" value = "Update Bus" class = "btn">
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