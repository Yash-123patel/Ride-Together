<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Ride Together</title>
      <link rel="icon" href="/ride/AllImages/logo.jpg">
<style type="text/css">
<%@include file="/AllCssFiles/login_options.css" %>
</style>
</head>
<body>
    <header>
        <div class="header-content">
            <img src="/ride/AllImages/logo.jpg" alt="Ride Together Logo" class="logo">
            <nav class="navbar">
                <ul>
                   <li><a href="index.jsp">Home</a></li>
				<li><a href="index.jsp#contact">Contact Us</a></li>
				<li><a href="index.jsp#about">About</a></li>
				<li><a href="getOptionPage">Go Back</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <h1>Welcome to Ride Together Rental Service</h1>

        <section class="info-section">
            <h2>Our Services</h2>
            <p>Welcome to Ride Together, your go-to service for renting and managing cars. Explore the functionalities we offer:</p>
            <h3>Rent A Car</h3>
            <p>Book a car of your choice for your journey. Simply click the "Rent A Car" button to view available options and make a reservation.</p>
            <h3>Return Car</h3>
            <p>If you have finished using your rented car, click "Return Car" to process the return. We will ensure that everything is in order.</p>
            <h3>Show My Rented Car</h3>
            <p>Check the details of the car you currently have rented. This feature allows you to view your rental status and car information.</p>
        </section>

        <!-- Action Buttons -->
        <div class="button-container">
            <a href="gettermsPage" class="button">Rent A Car</a>
            <a href="getCarReturnPage" class="button">Return Car</a>
            <a href="getHistoryPage" class="button">Show History</a>
            <a href="cancleBookingPage" class="button">Cancel Booking</a>
            <a href="logout" class="button">Logout</a>
            <a href="index.jsp" class="button">Home</a>
        </div>
    </main>

    <footer>
        <div class="footer-container">
            <div class="footer-section">
                <img src="logo.jpg" alt="Ride Together Logo" class="footer-logo">
                <p>Your journey, our drive. Rent with ease.</p>
            </div>
            <div class="footer-section">
                <h4>HELPFUL LINKS</h4>
                <ul>
                    <li><a href="#">Car Rentals</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Refund & Cancellation Policy</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>GET IN TOUCH</h4>
                <ul>
                    <li><a href="mailto:support@ridetogether.com">support@ridetogether.com</a></li>
                    <li>Support Team : 10am-6pm</li>
                    <li>Phone: +1 234 567 890</li>
                </ul>
            </div>
            <div class="footer-section">
                <h4>CONNECT WITH US</h4>
                <ul class="social-icons">
                    <li><a href="#"><i class="fab fa-facebook"></i> Facebook</a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i> Twitter</a></li>
                    <li><a href="#"><i class="fab fa-youtube"></i> YouTube</a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i> Instagram</a></li>
                    <li><a href="#"><i class="fab fa-linkedin"></i> LinkedIn</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-bottom">
            <p>&copy; 2024 Ride Together. All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>

