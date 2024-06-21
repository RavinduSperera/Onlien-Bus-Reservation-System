<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Bus</title>

     <!--Font awesome cdn link -->
     <link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

     <!--Custom css file link-->
     <link rel = "stylesheet" href = "style.css">

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
    <section class = "register" id = "register">
        <h1 class = "heading"><span>Add </span> Bus</h1>
        <div class = "row">

            <form action = "businsert" method = "post"> <!--FORMMM-->

                <legend>Bus Registration</legend><br><br>

                <label>Bus Number:</label><br>
                <input type = "text"  class = "box" name = "busNumber">
                <br>
                 <label>Bus Type:</label>
                <input list = "busType" class = "box" name = "busType">
                
                  <datalist id = "busType" >
                    <option value = "A/C">A/C</option>
                    <option value = "Non- A/C">Non- A/C</option>
                </datalist>
                <br>
                
                <label>Driver ID:</label>
                <input type = "text" class = "box" name = "driverID"><br>
                
                <label>Total Seat:</label>
                <input type = "text" class = "box" name = "totalSeats"> <br>
                
                <label>Available Seat:</label>
                <input type = "text" class = "box" name = "availableSeats"> <br>
                
                 <label>Bus Route:</label>
                <input type = "text" class = "box" name = "busRoute"> <br>
                
                <input type = "submit" value="Add Bus" class = "btn" name = "addBus">

            </form>

            <div class = "image">
                <img src = "images/login.jpg" alt = "Contact Us">
            </div>
        </div>

    </section>
    <!--Login Section Ends-->

    <!--Footer Section Starts-->

    <section class = "footer">
        <div class = "box-container">
            <div class = "box">
                <h3>Quick Links</h3>
                <a href = "#">Home</a>
                <a href = "#">About</a>
                <a href = "#">Reservations</a>
                <a href = "#">Review</a>
                <a href = "#">Contact Us</a>
            </div>

            <div class = "box">
                <h3>External Links</h3>
                <a href = "#">My Account</a>
                <a href = "#">My Order</a>
                <a href = "#">My Favourites</a>
            </div>

            <div class = "box">
                <h3>Locations</h3>
                <a href = "#">Galle</a>
                <a href = "#">Colombo</a>
                <a href = "#">Kandy</a>
                <a href = "#">Malabe</a>
                <a href = "#">Kaduwela</a>
            </div>

            <div class = "box">
                <h3>Contact Info</h3>
                <a href = "#">+94 771196408</a>
                <a href = "#">hgp.ashi@gmail.com</a>
                <a href = "#">Flower Lane, Galle.</a>
                <img src = "/images/creditCard.png" alt = "">
            </div>
        </div>
        <div class = "credit">Created By <span> Group Project: SE/OOP/2023/S2/MLB/WD/G265 </span></div>
    </section>
    <!--Footer Section Ends-->

</body>
</html>