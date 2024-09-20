<%@page import="com.nit.model.BookingDetails"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Details</title>
    <link rel="stylesheet" href=> 
   <style>
<%@
include file="/AllCssFiles/booking_details.css"%>
</style>
</head>
<body>
<% 
    BookingDetails details = (BookingDetails)request.getAttribute("info"); 
%>
<header>
    <div class="heading">
        <img src="/ride/AllImages/logo.jpg">
    </div>

    <div class="options">
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="index.jsp#contact">Contact Us</a></li>
            <li><a href="index.jsp#about">About</a></li>
            <li><a href="cancleBookingPage">Go Back</a></li>
        </ul>
    </div>
</header>

<section class="details">
    <div class="info-intro">
        <h2>Your Booking Details</h2>
        <p>Below is the information regarding your current booking.</p>

        <!-- Displaying Booking Information -->
        <div class="info">
            <h3>Booking ID: <%= details.getBokkingId() %></h3>
            <p><strong>Customer Name:</strong> <%= details.getUserName() %></p>
            <p><strong>Car Model:</strong> <%= details.getCarname() %></p>
            <p><strong>Pickup Date:</strong> <%= details.getPicUpDate() %></p>
            <p><strong>Return Date:</strong> <%= details.getReturnDate() %></p>
            <p><strong>Total Cost:</strong> $<%= details.getTotalAmount() %></p>
             <p><strong>Refundable Amount:</strong> $<%= details.getTotalAmount() -1500%></p>
        </div>

        <p>If you need to cancel or modify this booking, please contact our support team or visit your account page for more options.</p>

        <!-- Cancel Button -->
        <form action="cancel" method="POST">
            <input type="hidden" name="bookingId" value="<%= details.getBokkingId() %>">
            <button type="submit" class="booking-button">Cancel Booking</button>
        </form>
    </div>
</section>
    
</body>
</html>
