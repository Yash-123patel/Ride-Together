<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking History</title>
    <style type="text/css"><%@include file="/AllCssFiles/show_history.css"%></style>
</head>
<body>
     <header>
        <div class="header-container">
            <div class="logo">
                <img src="/ride/AllImages/logo.jpg" alt="Logo">
            </div>
            <nav class="nav-links">
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
        <section class="history-section">
            <h2>Select an option to view your booking history:</h2>
            <p class="description">Choose from the options below to see details about your bookings:</p>
            <div class="button-container">
                <button><a href="upcomeingJourney">Upcoming Journey</a></button>
                <button><a href="completedJourney">Completed Journey</a></button>
                <button><a href="cancleJourney">Canceled Booking</a></button>
            </div>
            <div class="info">
                <h3>What would you like to do?</h3>
                <p>
                    Click on the options above to check your upcoming journeys, view completed bookings, or review any canceled bookings.
                    We strive to provide the best service, so feel free to reach out if you have any questions or need assistance!
                </p>
            </div>
        </section>
    </main>

    <footer>
        <div class="footer-container">
            <div class="footer-section">
                <img src="/ride/AllImages/logo.jpg" height="90px" width="90px" alt="Ride Together Logo" class="footer-logo">
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
