<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ride Together</title>
 <link rel="icon" href="/ride/AllImages/logo.jpg">
 
    <style>
        <%@include file="/AllCssFiles/upi.css"  %>
    </style>
</head>
<body>
    <div class="container">
        <div class="payment-form-container">
            <img src="/ride/AllImages/logo.jpg" alt="Car Rental Logo" style="width: 100px; height: auto; display: block; margin: 0 auto 20px;">
            <h2>Complete Your UPI Payment</h2>
            <form id="paymentForm" action="bookingDetails" method="post">
            
                 <input type="hidden" name="paymentTpye" value="upi"> 
                <label for="upiId">UPI ID:</label>
                <input type="text" id="upiId" name="upiId" placeholder="example@upi" required>
                
                <label for="amount">Amount:</label>
                <h1 id="amount" name="amount" ><%=request.getAttribute("total") %></h1>
                
                <input type="submit" value="Make Payment">
            </form>
            <div class="payment-security-info">
                <h4>Payment Security</h4>
                <p>We use the latest encryption technology to keep your payment details secure.</p>
            </div>
            <div class="additional-tips">
                <h4>Additional Tips</h4>
                <ul>
                    <li>Ensure your UPI ID is correct before submitting.</li>
                    <li>Contact us immediately if you experience any issues.</li>
                </ul>
            </div>
            <div class="terms">
                <p>By proceeding with this payment, you agree to our <a href="/terms-and-conditions">Terms and Conditions</a>.</p>
            </div>
        </div>
        <div class="sidebar">
            <h3>UPI Payment Information</h3>
            <div class="info-pair">
                <div class="info-section">
                    <h4>What is UPI?</h4>
                    <p>UPI (Unified Payments Interface) is a real-time payment system developed by the National Payments Corporation of India. It allows instant transfer of funds between bank accounts through mobile devices.</p>
                </div>
                <div class="info-section">
                    <h4>How to Use UPI?</h4>
                    <p>To use UPI, you need to have a UPI ID created through your bank's mobile app. You can then make payments or receive money using this ID.</p>
                </div>
            </div>
            <div class="info-pair">
                <div class="info-section">
                    <h4>Security Measures</h4>
                    <p>UPI transactions are secured with encryption and multi-factor authentication to ensure your payment information remains safe.</p>
                </div>
                <div class="info-section">
                    <h4>Contact Support</h4>
                    <p>If you encounter any issues with UPI payments, please contact our support team:</p>
                    <p>Email: support@example.com</p>
                    <p>Phone: +1-800-123-4567</p>
                </div>
            </div>
            <div class="home-button">
                <a href="/home">Return to Home</a>
            </div>
        </div>
    </div>
</body>
</html>