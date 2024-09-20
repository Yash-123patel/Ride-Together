<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ride Together Terms and Conditions</title>
    <style type="text/css">
    
    <%@include file="/AllCssFiles/terms.css" %>
    
    </style>
</head>
<body>
 <div class="container">
        <h1>Car Rental Terms and Conditions</h1>
        <form action="getLocationPage" method="post">
            <div class="terms">
                <h2>Terms and Conditions</h2>
                <p>Please read the following terms and conditions carefully:</p>
                <ul>
                    <li>The car must be returned in the same condition as when rented.</li>
                    <li>The renter is responsible for any damages incurred during the rental period.</li>
                    <li>Fuel charges will be applied if the car is returned with less fuel than it had at the start.</li>
                    <li>Late returns will incur additional charges.</li>
                    <li>The renter must hold a valid driving license and be at least 21 years old.</li>
                    <li>The car is subject to availability.</li>
                    <li>The rental fee is non-refundable in case of cancellation.</li>
                    <li>Any violation of traffic laws will be the renter's responsibility.</li>
                    <li>Insurance coverage is included; however, a deductible may apply.</li>
                </ul>
                <label>
                    <input type="checkbox" id="acceptTerms" name="acceptTerms" required>
                    I accept the terms and conditions.
                </label>
                <button type="submit">Proceed</button>
            </div>
        </form>
    </div>
</body>
</html>
