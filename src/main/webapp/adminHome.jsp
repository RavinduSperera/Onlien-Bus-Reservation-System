<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin View</title>

<!--Font awesome cdn link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!--Custom css file link-->
<link rel="stylesheet" href="style.css">

<style>
.admin-btn-group .admin-btn {
	background-color: var(--brown);
	border: 1px solid #835e46;
	border-width: 0.3rem;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	font-size: 16px;
	cursor: pointer;
	width: 500px;
	display: block;
}

.admin-btn-group {
	justify-items: center;
	align-items: center;
}

.admin-btn-group .admin-btn:hover {
	background-color: #835e46;
	text-decoration: none;
}

#admin-label {
	align-items: center;
	text-align: center;
	font-size: 3rem;
	color: #835e46
}

#centerthings {
	padding-left: 12.8rem;
	align-items: center;
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
	<section class="register" id="register">

		<h1 class="heading">
			<span>Admin</span> View
		</h1>
		<div class="row">
			<div id="centerthings">
				
				<div class="admin-btn-group">
				
					<form method = "post" action = "retrievePassenger">
						<input class = "admin-btn" type = "submit" value = "Users">
					</form>
					
					<form method = "post" action = "">
					<a href = "loginBus.jsp">
						<input class = "admin-btn" type = "button" value = "Bus Section">
					</a>
						
					</form>
					
					<form method = "post" action = "#">
						<input class = "admin-btn" type = "submit" value = "Payment Section">
					</form>
					
					<form method = "post" action = "#">
						<input class = "admin-btn" type = "submit" value = "Reservations">
					</form>
					<br>
				</div>
			</div>
			
			<div class="image">
				<img src="images/login.jpg" alt="Contact Us">
			</div>

		</div>



	</section>
	<!--Login Section Ends-->

	<!--Footer Section Starts-->

	<section class="footer">
		<div class="box-container">
			<div class="box">
				<h3>Quick Links</h3>
				<a href="#">Home</a> <a href="#">About</a> <a href="#">Reservations</a>
				<a href="#">Review</a> <a href="#">Contact Us</a>
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
				<a href="#">+94 771196408</a> <a href="#">hgp.ashi@gmail.com</a> <a
					href="#">Flower Lane, Galle.</a> <img src="/images/creditCard.png"
					alt="">
			</div>
		</div>
		<div class="credit">
			Created By <span> Group Project: SE/OOP/2023/S2/MLB/WD/G265 </span>
		</div>
	</section>
	<!--Footer Section Ends-->

</body>
</html>