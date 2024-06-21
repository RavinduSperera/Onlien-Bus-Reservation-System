<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment</title>

<!--Font awesome cdn link -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<!--Custom css file link-->
<link rel="stylesheet" href="style.css">

<style>
   .container {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
  }

  .input-group {
    margin-bottom: 20px;
    margin-right: 20px;
  }
  
  .input-box {
    text-align: left;
    margin: 10px;
  }
  
  select,
  input[type="text"],
  input[type="tel"] {
    padding: 10px;
    width: 100%;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 16px;
  }
  
  input[type="text"]:focus,
  input[type="tel"]:focus,
  select:focus {
    outline: none;
    border-color: var(--brown);
  }

  .card-options {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-top: 10px;
  }
  
  button[type="submit"],
  button[type="button"] {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    transition: background-color 0.3s ease;
    margin-top: 20px;
  }
  
  button[type="submit"]:hover,
  button[type="button"]:hover {
    background-color: #45a049;
  }
  
  button[type="submit"]:focus,
  button[type="button"]:focus {
    outline: none;
  }
  
  button[type="submit"]:active,
  button[type="button"]:active {
    transform: translateY(1px);
  }

  .input-box label{
    font-size: 1.3rem;
    display: block;
    margin-top: 0px;
    color: #555;
  }

  .container h2{
    font-size: 2rem;
    text-align: center;
    color: var(--brown);
    margin-top: 0;
  }

  .input-box h3{
    font-size: 1.5rem;
    color: #333;
    margin-top: 0;
  }

  
.pay-input{
	font-size: 1.3rem;
}

#button-pay{
    padding-right: 23rem;
}

#button-delete{
    padding-right: 23rem;
}
</style>

</head>
<body>
	<!--Header section starts-->
	<header>
	
		<%
    		String rid = request.getParameter("rid");
    		String busName = request.getParameter("busNumber");
    		String destination = request.getParameter("destination");
    		String seatNo = request.getParameter("seatNo");
    		String pricePerTicket = request.getParameter("pricePerTicket");
    	%>

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
			<span>Pay </span> Trip
		</h1>
		<div class="row">
			<form action="insertPayment" method="post">
				<legend>Pay Reservation</legend>
				
				<br> 
				
				<label for="account-number">Reservation ID</label> 
				<input type="text" id="account-number" placeholder="Reservation ID" value = "<%=rid%>" name="reservationID" required ><br><br> 
				
				<label for="account-number">Account Number</label> 
				<input type="text" id="account-number" placeholder="Account Number" name="accountNumber" required ><br><br> 
				
				<label for="account-number">Price Per Seat </label> 
				<input type="text" id="account-number" placeholder="payment Amount" value = "<%=pricePerTicket%>" name="paymentAmount" required ><br><br>
				
				<label for="account-number">No of Seats </label> 
				<input type="text" id="account-number" placeholder="payment Amount" name="noOfSeats" value = "<%=seatNo%>"required ><br><br>
				
				<div class="left-input">
					<div class="input-box">
						<h3>Payment Option:</h3>
					</div>
					<div class="radio-option">
						<input type="radio" id="transfer-account" name="paymentOption" checked value="TransferAccount">
						<label-1 for="transfer-account" class="pay-input">Transfer from Account</label-1>
					</div>

					<div class="radio-option">
						<input type="radio" id="debit-credit-card" name="paymentOption" value="CardPayment">
						<label-1 for="debit-credit-card" class="pay-input">Debit/Credit Card</label-1>
					</div>
				</div>
				
				<br>
				<br>
				
				<div class="right-input">
					<div class="input-box">
						<h3>Card Details</h3>
						<br> <input type="text" id="cardholder-name" placeholder="Cardholder Name" name="cardHolderName" required >
					</div>
					<div class="input-box">
						<input type="tel" id="card-number" placeholder="Card Number" name="cardNumber" required >
					</div>
				</div>
				<br>
				<br>
				<div class="input-box">
					<label>Expiary</label> <input type="text" id="expiry-date" placeholder="MM/YY" name="expiary" required >
				</div>

				<div class="input-box">
					<input type="tel" id="cvc" placeholder="CVC" name="cvc" required >
				</div>
				
				<span id="button-pay"> <input type="reset" name="reset" value="Cancel" class="btn"></span> 
				
				<input type="submit" name="submit" value="Submit" class="btn">
				
			</form>

			<div class="image">
				<img src="images/paymentMethod.jpg" alt="Contact Us">
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


