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
<%@include file="/AllCssFiles/droping_date.css" %>
</style>
</head>
<body>
    <img src="/ride/AllImages/logo.jpg" id="logo">
    <header>
        <div class="container">
            <nav>
                <ul>
                    <li><a href="index.jsp#about">About</a></li>
                    <li><a href="index.jsp#contact us">Cnotact</a></li>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="locationInfo">Back</a></li>
                   
                </ul>
            </nav>
        </div>
    </header>
    <main>
        
        <div class="flex-50">
            <form action="bookingAllInfo" onsubmit="return checkDate()">
            
                <h2>Select Dates</h2>
                <div class="form-group">
                    <label>Journey Date</label>
                    <div>
                        <input type="date" placeholder="journey Date" id="journey" name="journey" required/>
                    </div>
                </div>
                <div class="form-group">
                    <label>Return Date</label>
                    <div>
                        <input type="date" placeholder="return Date" id="returnd" name="returnd" required/>
                    </div>
                </div>
                <div>
                    <input type="submit" value="Book The Car" class="button">
                </div>
            </form>
        </div>
        
    </main>
    <footer >
        <div>
            <img src="logo2.png" alt="Ride Together Logo" >
        </div>
        <p>&copy; 2024 Ride Together. All rights reserved.</p>
        <p>Follow us on:
            <a href="#">Facebook</a> |
            <a href="#" >Twitter</a> |
            <a href="#" >Instagram</a>
        </p>
        <p><a href="contact.html" >Contact Us</a> | <a href="privacy.html" >Privacy Policy</a></p>
    </footer>
    
</body>
<script>
function checkDate() {
    let journeyDate = new Date(document.getElementById("journey").value);
    let returnDate = new Date(document.getElementById("returnd").value);

    const currentDate = new Date();
    currentDate.setHours(0, 0, 0, 0);
    journeyDate.setHours(0, 0, 0, 0);

    if (journeyDate < currentDate) {
        alert('journey date must be today or in the future.');
        return false;
    }
    if (journeyDate >= returnDate) {
        alert("Invalid return date. The return date must be after the journey date.");
        return false;
    }
    return true; 
}

</script>
</html>



