<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ride Together</title>
 <link rel="icon" href="/ride/AllImages/logo.jpg">
 
    <style>
        <%@include file="/AllCssFiles/netbanking.css"  %>
    </style>
</head>
<body>
 <div class="container">
        <div class="payment-form-container">
            <img src="/ride/AllImages/logo.jpg" alt="Car Rental Logo">
            <h2>Net Banking Payment</h2>
            <form id="paymentForm" action="bookingDetails" method="post">
             <input type="hidden" name="paymentTpye" value="netbanking"> 
                <label for="bankName">Bank Name:</label>
                <input type="text" id="bankName" name="bankName" placeholder="Enter Your Bank Name" required>
                
                <label for="accountNumber">Account Number:</label>
                <input type="text" id="accountNumber" name="accountNumber" placeholder="Enter Your Account Number" required>
                
                <label for="ifscCode">IFSC Code:</label>
                <input type="text" id="ifscCode" name="ifscCode" placeholder="Enter Your IFSC Code" required>
                
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
                    <li>Ensure all details are correct before submitting.</li>
                    <li>Contact us immediately if you experience any issues.</li>
                </ul>
            </div>
            <div class="terms">
                <p>By proceeding with this payment, you agree to our <a href="/terms-and-conditions">Terms and Conditions</a>.</p>
            </div>
        </div>
        <div class="sidebar">
            <h3>Net Banking Information</h3>
            <div class="info-pair">
                <div class="info-section">
                    <h4>What is Net Banking?</h4>
                    <p>Net Banking allows you to manage your bank account and make transactions online through your bank's website or app. It provides a secure and convenient way to handle your finances.</p>
                </div>
                <div class="info-section">
                    <h4>How to Use Net Banking?</h4>
                    <p>To use Net Banking, log in to your bank's website or mobile app using your credentials. Navigate to the payment or transfer section to complete your transaction.</p>
                </div>
            </div>
            <div class="info-pair">
                <div class="info-section">
                    <h4>Security Tips</h4>
                    <p>Ensure you are using a secure network and avoid public Wi-Fi when accessing your Net Banking account. Regularly monitor your account for any unauthorized transactions.</p>
                </div>
                <div class="info-section">
                    <h4>Customer Support</h4>
                    <p>If you encounter any issues, our customer support team is available 24/7 to assist you with your Net Banking transactions.</p>
                </div>
            </div>
            <div class="contact-info">
                <h4>Payment Support</h4>
                <p>If you experience any issues with your payment, please contact our support team:</p>
                <p>Email: support@example.com</p>
                <p>Phone: +1-800-123-4567</p>
            </div>
            <div class="home-button">
                <a href="/home">Return to Home</a>
            </div>
        </div>
    </div>
</body>
</html>