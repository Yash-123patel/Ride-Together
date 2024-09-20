<%@page import="com.nit.model.BookingDetails"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking History</title>
    <link rel="stylesheet" href="/ride/AllCSS/styles.css"> <!-- Add your CSS file here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .booking-card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 15px;
        }
        h2 {
            color: #ff6b81;
        }
        p {
            margin: 5px 0;
        }
        .no-booking {
            font-size: 18px;
            color: #666;
            text-align: center;
            margin-top: 20px;
        }
        header {
            background: linear-gradient(135deg, #ff7e5f, #feb47b);
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header img {
            width: 80px;
        }
        nav ul {
            list-style: none;
            display: flex;
            gap: 20px;
            margin: 0;
            padding: 0;
        }
        nav ul li {
            display: inline;
        }
        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        footer {
            background-color: #f7f7f7;
            padding: 30px;
            display: flex;
            justify-content: space-between;
            color: #333;
            margin-top: 20px;
        }
        .footer-section {
            flex: 1;
            padding: 10px;
        }
        .footer-section h4 {
            color: #007bff;
            font-weight: bold;
        }
        .footer-section ul {
            list-style: none;
            padding: 0;
        }
        .footer-section ul li {
            margin-bottom: 10px;
        }
        .footer-section ul li a {
            text-decoration: none;
            color: #333;
        }
        .footer-section ul li a:hover {
            color: #007bff;
        }
        .footer-bottom {
            text-align: center;
            padding: 15px;
            background-color: #eaeaea;
            font-size: 14px;
            color: #333;
        }
    </style>
</head>
<body>

<header>
    <div class="heading">
        <img src="/ride/AllImages/logo.jpg" alt="Logo">
    </div>
    <nav class="options">
        <ul>
             <li><a href="index.jsp">Home</a></li>
				<li><a href="index.jsp#contact">Contact Us</a></li>
				<li><a href="index.jsp#about">About</a></li>
				<li><a href="getOptionPage">Go Back</a></li>
        </ul>
    </nav>
</header>

<h1>Your Booking History</h1>

<% List<BookingDetails> list = (List<BookingDetails>) request.getAttribute("list"); %>

<% if (list != null && !list.isEmpty()) { %>
    <% for (int i = 0; i < list.size(); i++) { %>
        <% BookingDetails details = list.get(i); %>
        <div class="booking-card">
            <h2>Booking ID: <%= details.getBokkingId() %></h2>
            <p><strong>Customer Name:</strong> <%= details.getUserName() %></p>
            <p><strong>Car Model:</strong> <%= details.getCarname() %></p>
            <p><strong>Pickup Date:</strong> <%= details.getPicUpDate() %></p>
            <p><strong>Return Date:</strong> <%= details.getReturnDate() %></p>
            <p><strong>Total Cost:</strong> $<%= details.getTotalAmount() %></p>
        </div>
    <% } %>
<% } else { %>
    <p class="no-booking">No booking details available.</p>
<% } %>

<footer>
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
</footer>
<div class="footer-bottom">
    <p>&copy; 2024 Ride Together. All Rights Reserved.</p>
</div>

</body>
</html>
