<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Profile</title>

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
        <h1 class = "heading"><span>Update</span> Profile</h1>
        <div class = "row">
        
        	<% //Java Code
				String id = request.getParameter("pid");
				String fname = request.getParameter("fname");
				String lname = request.getParameter("lname");
				String age = request.getParameter("age");
				String city = request.getParameter("city");
				String phone = request.getParameter("pnumber");
				String email = request.getParameter("email");
				String username = request.getParameter("username");
				String password = request.getParameter("password");
			%>
        
            <form action = "updatePassenger" method = "post"> 

                <legend>Update Profile</legend>
   
                <label>Name:</label><br>
                <input type = "text" value = "<%= fname %>" class = "box1" name = "fname">
                <input type = "text" value = "<%= lname %>"class = "box1" name = "lname"><br>
				
				<label>User ID:</label>
                <input type = "text" value = "<%= id %>" class = "box2" name = "userID" readonly>
				
                <label>Phone Number:</label>
                <input type = "text" value = "<%= phone %>" class = "box2" name = "pnumber">

                <label id = "label">| Age:</label>
                <input type = "text" value = "<%= age %>" class = "box2" name = "age"><br>

                <label>City:</label>
                <input type = "text" value = "<%= city %>" class = "box" name = "city"><br>

                <label>Email Address:</label>
                <input type = "email" value = "<%= email %>" class = "box" name = "email"><br>
                
                <label>User Name:</label>
                <input type = "text" value = "<%= username %>" class = "box" name = "username"><br>
                
                <label>Password:</label>
                <input type = "text" value = "<%= password %>" class = "box" name = "pwd"><br>

                <input type = "submit" value="Update" class = "btn" name = "submit">

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