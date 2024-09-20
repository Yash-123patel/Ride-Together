<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ride Together</title>
<link rel="icon" href="/ride/AllImages/logo.jpg">

<style>
<%@
include file="/AllCssFiles/cancle_booking.css"%>
</style>
</head>
<body>
	<header>
		<div class="heading">

			<img src="/ride/AllImages/logo.jpg">
		</div>

		<div class="options">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="index.jsp#contact">Contact Us</a></li>
				<li><a href="index.jsp#about">About</a></li>
				<li><a href="getOptionPage">Go Back</a></li>
			</ul>
		</div>
	</header>

	<main>
		<div class="image">
			<div class="overlay-content">
				<h1>Welcome to Our Booking System</h1>
				<p>We are here to assist you with all your booking needs. If you
					wish to cancel a booking, please fill out the form below.</p>
			</div>
		</div>
	</main>
	<section class="details">
		<div class="info-intro">
			<h2>Cancellation Information</h2>
			<p>If you need to cancel your booking, please fill out the form
				below. Make sure to provide accurate information to help us process
				your request quickly.</p>
			<p>We understand that plans can change. If you wish to modify
				your booking instead, please reach out to our support team.</p>
			<p>If you want to review your current bookings before making a
				cancellation, click the link below:</p>
			<p>You will get your refund with in 3 working days</p>
			<a href="upcomeingJourney" class="booking-button">View Your Booking</a>
		</div>
		<form class="info" action="cancleBooking">
			<%
			String message = (String) request.getAttribute("message");
			%>
			<%
			if (message != null) {
			%>
			<h1 style="color: red;">
				<%=message%>
			</h1>
			<%
			}
			%>
			<label for="id">Booking ID</label> <input type="number"
				name="bookingid" placeholder="Enter your Booking ID" id="id"
				required> <label for="email">Email</label> <input
				type="email" name="email" placeholder="Enter your Email" id="email"
				required> <label for="reason">Reason for
				Cancellation</label> <select name="reason" id="reason" required>
				<option value="" disabled selected>Select a reason</option>
				<option value="schedule_change">Schedule Change</option>
				<option value="found_better_option">Found a Better Option</option>
				<option value="price_issue">Pricing Issue</option>
				<option value="personal_reason">Personal Reason</option>
				<option value="other">Other</option>
			</select>

			<p>If you have any feedback regarding your cancellation, please
				let us know.</p>

			<button type="submit">Submit Cancellation</button>
		</form>

	</section>
	<footer>
		<div class="footer-container">
			<div class="footer-section">
				<img src="logo.png" alt="Ride Together Logo" class="logo">
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