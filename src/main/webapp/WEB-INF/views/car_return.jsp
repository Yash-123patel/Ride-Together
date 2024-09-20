<%@page import="com.nit.model.BookingDetails"%>
<%@page import="java.util.Map"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ride Together</title>
    <link rel="icon" href="/ride/AllImages/logo.jpg">
    <style>
       <%@include file="/AllCssFiles/booking_success.css"  %>
    </style>
</head>
<body>
<%BookingDetails details=(BookingDetails)request.getAttribute("details"); %>

<div class="container">
    <img src="/ride/AllImages/logo.jpg" alt="Ride Together Logo" style="width: 100px; height: auto; margin-bottom: 20px;">
    <h1>Return Your Car</h1>
   
    
    <div class="details">
        <p>Thank you, <%= details.getUserName() %>!</p>
        
         <p><strong>Booking Details:</strong></p>
        <p>Booking ID: <%= details.getBokkingId() %></p>
        <p>Booking Date: <%= details.getBookingDate() %></p>
        
        
        <p><strong>Car Details:</strong></p>
        <p>Car ID: <%= details.getCarid() %></p>
        <p>Car Name: <%= details.getCarname() %></p>
        
        <p><strong>Booking Dates:</strong></p>
        <p>Start Date: <%= details.getPicUpDate() %></p>
        <p>End Date: <%= details.getReturnDate() %></p>
        
        <p><strong>Return Location:</strong></p>
        <p><%= details.getCity() %></p>

        <p>We would love to serve you again. Don't hesitate to book your next ride with us!</p>
    </div>
    <form action="returnCar" method="post">
    <input type="hidden" name="bookingid" value="<%= details.getBokkingId() %>">
    <input type="submit" class="button" value="return">
    </form>
    <a href="getOptionPage" class="button">Go to Options</a>
</div>
</body>
</html>
