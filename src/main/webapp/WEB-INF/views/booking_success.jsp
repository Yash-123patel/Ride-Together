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
<% Map<String, Object> rideMap = (Map<String, Object>) request.getAttribute("alldetails"); %>
<%BookingDetails details=(BookingDetails)rideMap.get("bookingDetails"); %>

<div class="container">
    <img src="/ride/AllImages/logo.jpg" alt="Ride Together Logo" style="width: 100px; height: auto; margin-bottom: 20px;">
    <h1>Booking Successful!</h1>
    <h1>Collect Your Rented Car at Your City Bus Stand</h1>
    
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

        <h2>Wishing You a Safe and Happy Journey!</h2>
        <p>Here are some tips for a great trip:</p>
        <ul>
            <li>Plan your route ahead of time to avoid traffic.</li>
            <li>Take breaks during long drives to stay refreshed.</li>
            <li>Always keep your phone charged for navigation and emergencies.</li>
            <li>Enjoy the scenery and make memories along the way!</li>
        </ul>
        
        <p>We hope you have a fantastic experience with us.</p>
        <h3>Book Again for Your Next Adventure!</h3>
        <p>We would love to serve you again. Don't hesitate to book your next ride with us!</p>
    </div>
    <a href="getOptionPage" class="button">Go to Options</a>
</div>
</body>
</html>
