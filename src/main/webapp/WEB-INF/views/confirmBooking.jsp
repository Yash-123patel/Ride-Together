<%@page import="java.time.Period"%>
<%@page import="com.nit.model.BookingDates"%>
<%@page import="com.nit.model.Car"%>
<%@page import="com.nit.model.Location"%>
<%@page import="com.nit.model.User"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Details</title>
<link rel="icon" href="/ride/AllImages/logo.jpg">
<style type="text/css">
<%@include file="/AllCssFiles/confirm_booking.css"  %>
</style>
</head>
<body>

<% Map<String, Object> rideMap = (Map<String, Object>) request.getAttribute("bookingInfo"); %>
<% User user = (User) rideMap.get("user"); %>
<% Location location = (Location) rideMap.get("location"); %>
<% Car car = (Car) rideMap.get("carInfo"); %>
<% BookingDates dates = (BookingDates) rideMap.get("dates"); %>





<div class="container">
    <div class="main-content">
        <div class="logo">
            <img src="/ride/AllImages/logo.jpg" alt="Car Rental Logo">
        </div>
        <div class="header">
            <h1>Your Booking Details</h1>
        </div>
        
        <!-- User Details -->
        <div class="section">
            <h2>User Information</h2>
            <p><strong>Name:</strong> <%= user.getFullName()%></p>
            <p><strong>Email:</strong> <%=user.getEmail() %></p>
            <p><strong>Phone:</strong> <%=user.getMobileNo() %></p>
        </div>
        
        <!-- Car Details -->
        <div class="section">
            <h2>Car Details</h2>
            <p><strong>Car Name:</strong> <%= car.getCarName() %></p>
            <p><strong>Car Model:</strong> Model XYZ</p>
            <p><strong>Features:</strong> Air Conditioning, GPS, Bluetooth</p>
        </div>

        <!-- Location Details -->
        <div class="section">
            <h2>Location Details</h2>
            <p><strong>City:</strong> <%= location.getCity() %></p>
            <p><strong>Pickup Address:</strong> 123 Main St, <%= location.getCity() %>, ZIP <%=location.getPincode() %></p>
        </div>
        
        <!-- Booking Dates -->
        <div class="section">
            <h2>Booking Dates</h2>
            <p><strong>Booking Date:</strong> <%= dates.getBookingDate() %></p>
            <p><strong>From Date:</strong> <%= dates.getJourneyDate() %></p>
            <p><strong>To Date:</strong> <%= dates.getReturnDate() %></p>
        </div>

        <!-- Pricing -->
        <div class="section">
            <h2>Pricing Details</h2>
            <p><strong>Per Day Charge:</strong> $<%= car.getPerDayCharge() %></p>
            <p><strong>Total Number of Days:</strong> <%= dates.getNumberOfDays() %></p>
            <p><strong>Total Amount:</strong> $<%= rideMap.get("totalAmount")%></p>
        </div>
        
        <!-- Payment Information -->
        <div class="section">
            <h2>Payment Information</h2>
            <p>Please proceed to the payment page to finalize your booking.</p>
            <p>If you have any questions or need assistance, contact our support team.</p>
        </div>
        
        <div class="button-group">
            <a href="paymentPage" class="btn btn-primary">Proceed to Payment</a>
            <a href="droping_date.jsp" class="btn btn-secondary">Back</a>
            <a href="index.jsp" class="btn btn-secondary">Home</a>
        </div>
    </div>

    <!-- Sidebar -->
    <div class="sidebar">
        <h3>Special Offers</h3>
        <p>Check out our latest discounts and offers on car rentals. Save more on your next booking!</p>
        
        <h3>Contact Us</h3>
        <p>For any queries or support, reach out to us at:</p>
        <p><strong>Email:</strong> support@carhire.com</p>
        <p><strong>Phone:</strong> +1-234-567-8902</p>

        <h3>Popular Destinations</h3>
        <ul>
            <li><a href="#">Mumbai</a></li>
            <li><a href="#">Indore</a></li>
            <li><a href="#">Dehli</a></li>
            <li><a href="#">Bhopal</a></li>
              <li><a href="#">Hyderabad</a></li>
            <li><a href="#">Banglore</a></li>
            <li><a href="#">Pune</a></li>
            <li><a href="#">Noida</a></li>
        </ul>
    </div>
</div>

</body>
</html>
