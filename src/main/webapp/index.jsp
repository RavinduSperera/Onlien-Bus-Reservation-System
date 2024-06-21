<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Bus Mate</title>

<!--Font awesome cdn link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!--Custom css file link-->
<link rel="stylesheet" href="style.css">
</head>

<body>
	<!--Loading Screen Starts-->
	<div id="pre-loader"></div>
	<!--Loading Screen Ends-->
	
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

	<!--Home Section Starts-->
	<section class="home" id="home"
		style="background: url(images/background5.jpeg) no-repeat; display: flex; align-items: center; min-height: 100vh; background-size: cover; background-position: center;">
		<div class="content">
			<h3>"Ticket To-Go"</h3>
			<span>Journey Awaits Your Ticket</span>
			<p align="justify">
				<b>Welcome to BusMate!</b> your one-stop destination for hassle-free
				travel planning. With our user-friendly platform, you can
				effortlessly book bus tickets, secure your preferred seats, and
				embark on memorable journeys with confidence. Discover convenience,
				reliability, and a world of exciting destinations right at your
				fingertips. Your adventure begins here...
			</p>
			<br> <a href="passengerLogin.jsp" class="btn">Book now</a>
		</div>
	</section>
	>
	<!--Home Section Ends-->

	<!--About Section Starts-->

	<section class="about" id="about">
		<h1 class="heading">
			<span> about </span> us
		</h1>
		<div class="row">
			<div class="video-container">
				<video src="images/about.mp4" loop autoplay muted></video>
				<h3>best Bus Routes</h3>
			</div>

			<div class="content">
				<h3>Why choose Us?</h3>
				<p align="justify">Why choose us for your online bus ticket
					reservations? Firstly, we offer unbeatable convenience. Our website
					and mobile app are easy to use, allowing you to book your tickets
					quickly and hassle-free. Plus, you can access our services 24/7,
					making it convenient for you to plan your travel at any time.</p>
				<p align="justify">Secondly, we offer competitive prices. We
					understand the value of your hard-earned money, which is why we
					strive to provide affordable ticket options without compromising on
					quality. When you choose us, you're not just getting a ticket;
					you're getting a great deal that makes your journey more
					budget-friendly. Make the smart choice and book your bus tickets
					with us today!</p>
				<a href="#" class="btn">Learn more</a>
			</div>
		</div>
	</section>
	<!--About Section Ends-->

	<!--Icons Session Starts-->

	<section class="icons-container">

		<div class="icons">
			<img src="images/24-hours-support.png" alt="24/7Customer Support">
			<div class="info">
				<h3>24/7 Customer Support</h3>
				<span>Any Issues? Please contact us right away!</span>
			</div>
		</div>

		<div class="icons">
			<img src="images/payment.png" alt="Payment Security">
			<div class="info">
				<h3>24/7 Payment Security</h3>
				<span>Secured By Paypal</span>
			</div>
		</div>

		<div class="icons">
			<img src="images/booking.png" alt="Successful Live Booking">
			<div class="info">
				<h3>100% Successful Live Booking</h3>
				<span>Book your ticket no matter what!</span>
			</div>
		</div>

		<div class="icons">
			<img src="images/monitoring.png"
				alt="Boarding Monitoring Team Service">
			<div class="info">
				<h3>100% Boarding Monitoring Team Service</h3>
				<span>Moniters all boards!</span>
			</div>
		</div>

		<div class="icons">
			<img src="images/location.png" alt="Bus Tracking Service">
			<div class="info">
				<h3>Bus Tracking Service</h3>
				<span>Have a track on every bus so that can get on time.</span>
			</div>
		</div>

		<div class="icons">
			<img src="images/travel.png" alt="Partners">
			<div class="info">
				<h3>All Partners In One Platform</h3>
				<span>Can choose whatever option you want</span>
			</div>
		</div>
	</section>

	<!--Icons Session Ends-->

	<!--Route Section Starts-->

	<section class="routes" id="reservations">

		<h1 class="heading">
			Popular <span>Destinations</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<span class="discount">-10%</span>

				<div class="image">
					<img src="images/galleBusStand.jpg" alt="">
					<div class="icons">
						<a href="#" class="fas fa-heart"></a> <a href="#" class="cart-btn">
							select route</a> <a href="#" class="fas fa-share"></a>
					</div>
				</div>

				<div class="content">
					<h3>Galle Bus Stand</h3>
					<div class="price">
						Rs.891<span>Rs.990</span>
					</div>
				</div>
			</div>


			<div class="box">
				<span class="discount">-15%</span>

				<div class="image">
					<img src="images/kandyBusStand.jpg" alt="">
					<div class="icons">
						<a href="#" class="fas fa-heart"></a> <a href="#" class="cart-btn">
							select route</a> <a href="#" class="fas fa-share"></a>
					</div>
				</div>

				<div class="content">
					<h3>Kandy Bus Stand</h3>
					<div class="price">
						Rs.891<span>Rs.990</span>
					</div>
				</div>
			</div>

			<div class="box">
				<span class="discount">-15%</span>

				<div class="image">
					<img src="images/makuburaBusStand.jpg" alt="">
					<div class="icons">
						<a href="#" class="fas fa-heart"></a> <a href="#" class="cart-btn">
							select route</a> <a href="#" class="fas fa-share"></a>
					</div>
				</div>

				<div class="content">
					<h3>Makubura Bus Stand</h3>
					<div class="price">
						Rs.891<span>Rs.990</span>
					</div>
				</div>
			</div>


			<div class="box">
				<span class="discount">-5%</span>

				<div class="image">
					<img src="images/colomboBusStand.jpg" alt="">
					<div class="icons">
						<a href="#" class="fas fa-heart"></a> <a href="#" class="cart-btn">
							select route</a> <a href="#" class="fas fa-share"></a>
					</div>
				</div>

				<div class="content">
					<h3>Colombo Bus Stand</h3>
					<div class="price">
						Rs.891<span>Rs.990</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--Route Section Ends-->

	<!--Review Section Starts-->

	<section class="review" id="review">

		<h1 class="heading">
			Customers <span>Review</span>
		</h1>
		<div class="box-container">
			<div class="box">
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i>
				</div>
				<br>
				<p align="justify">"BusMate is a lifesaver! Fast, easy, and
					reliable. I can't imagine traveling without it."</p>
				<div class="user">
					<img src="images/profile1.jpg" alt="">
					<div class="user-info">
						<h3>Ashan Tharindu</h3>
						<span>happy customer</span>
					</div>
				</div>

				<span class="fas fa-quote-right"></span>
			</div>

			<div class="box">
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i>
				</div>
				<br>
				<p align="justify">"Using BusMate has been a game-changer for
					me. The convenience is unmatched! I can quickly book my tickets
					from the comfort of my home, and the process is incredibly
					user-friendly. Plus, their customer support team is fantastic -
					they've always been there to assist whenever I had a question. The
					competitive prices and transparent booking process make it a go-to
					choice for all my travel needs. I can confidently say this platform
					has made my bus travel experiences smoother and stress-free. Highly
					recommended!"</p>
				<div class="user">
					<img src="images/profile2.jpg" alt="">
					<div class="user-info">
						<h3>Gimashi Ishara</h3>
						<span>happy customer</span>
					</div>
				</div>

				<span class="fas fa-quote-right"></span>
			</div>

			<div class="box">
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i>
				</div>
				<br>
				<p align="justify">"I've been using BusMate for a while now, and
					it never disappoints. The interface is straightforward, and I can
					book my tickets in a matter of minutes. What I appreciate most is
					the real-time seat availability feature, which helps me plan my
					trips better. Plus, the prices are reasonable, making it my go-to
					choice for bus travel. It's a must-try for anyone looking for a
					hassle-free booking experience."</p>
				<div class="user">
					<img src="images/profile3.jpg" alt="">
					<div class="user-info">
						<h3>Chamindu Somapala</h3>
						<span>happy customer</span>
					</div>
				</div>

				<span class="fas fa-quote-right"></span>
			</div>

			<div class="box">
				<div class="stars">
					<i class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i> <i class="fas fa-star"></i> <i
						class="fas fa-star"></i>
				</div>
				<br>
				<p align="justify">"I can't say enough good things about BusMate
					platform. It's like having a travel agent at my fingertips. The
					convenience is unbeatable, and I love the flexibility it offers in
					terms of choosing different bus operators and schedules. Customer
					support is also top-notch; they're always ready to assist. Whether
					it's a last-minute trip or a planned getaway, I trust this system
					for all my bus ticket needs."</p>
				<div class="user">
					<img src="images/profile4.jpg" alt="">
					<div class="user-info">
						<h3>Ravindu Wijethunga</h3>
						<span>happy customer</span>
					</div>
				</div>

				<span class="fas fa-quote-right"></span>
			</div>

		</div>

	</section>

	<!--Review Section Ends-->

	<!--Contact Section Starts-->
	<section class="contact" id="contact">
		<h1 class="heading">
			<span>Contact</span> Us
		</h1>
		<div class="row">
			<form action="#" method = "post">
				<input type="text" placeholder="Enter Name..." class="box" name = "name">
				<input type="email" placeholder="Enter Email..." class="box" name = "email">
				<textarea name="" class="box" name = "msg" id="" cols="30"
					rows="10">    
                </textarea>
				<input type="submit" value="send message" class="btn">
			</form>

			<div class="image">
				<img src="images/contactUs.jpg" alt="Contact Us">
			</div>
		</div>

	</section>
	<!--Contact Section Ends-->

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
					href="#">Flower Lane, Galle.</a> <img src="images/creditCard.png"
					alt="">
			</div>
		</div>
		<div class="credit">
			Created By <span> Group Project: SE/OOP/2023/S2/MLB/WD/G265 </span>
		</div>
	</section>
	<!--Footer Section Ends-->



	<!-- JS part | pre-loader -->
	<script>
		var loader = document.getElementById("pre-loader");

		function closepreloader() {
			document.getElementById("pre-loader").style.display = "none";
		}

		window.addEventListener("load", function() {
			setTimeout(closepreloader, 1500);
		})
	</script>

	<script src="js/script.js"></script>

</body>
</html>