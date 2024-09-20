<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RideTogether</title>
     <link rel="icon" href="/ride/AllImages/logo.jpg">
    <style>
        <%@include file="/AllCssFiles/card.css"  %>
    </style>
</head>
<body>
    <div class="container">
        <div class="payment-form-container">
            <img src="/ride/AllImages/logo.jpg" alt="Car Rental Logo" style="width: 100px; height: auto; display: block; margin: 0 auto 20px;">
            <h2>Enter Your Payment Details</h2>
            <form id="paymentForm" action="bookingDetails" method="post"">
                <div class="payment-methods">
                
                    <div class="payment-option">
                        <input type="radio" id="creditCard" name="paymentMethod" value="creditCard" required>
                        <label for="creditCard">Credit Card</label>
                    </div>
                    <div class="payment-option">
                        <input type="radio" id="debitCard" name="paymentMethod" value="debitCard">
                        <label for="debitCard">Debit Card</label>
                    </div>
                </div>
                <div class="card-details">
                 <input type="hidden" name="paymentTpye" value="card"> 
                    <h2>Amount to be paid: <span><%=request.getAttribute("total") %></span></h2>
                    <label for="cardNumber">Card Number:</label>
                    <input type="text" id="cardNumber" name="cardNumber" placeholder="**** **** **** ****" required>
                    
                    <label for="cardName">Cardholder Name:</label>
                    <input type="text" id="cardName" name="cardName" placeholder="John Doe" required>
                    
                    <label for="expiryDate">Expiry Date:</label>
                    <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YY" required>
                    
                    <label for="cvv">CVV:</label>
                    <input type="text" id="cvv" name="cvv" placeholder="123" required>
                    
                    <input type="submit" value="Make Payment">
                </div>
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
            </form>
            <div id="loading">Processing your payment...</div>
        </div>
        <div class="sidebar">
            <h3>Payment Methods</h3>
            <div class="info-pair">
                <div class="info-section">
                    <h4>Credit Card</h4>
                    <p>Fast and widely accepted, credit cards offer various benefits including rewards and fraud protection.</p>
                </div>
                <div class="info-section">
                    <h4>Debit Card</h4>
                    <p>Debit cards withdraw funds directly from your account, helping you manage your spending and avoid debt.</p>
                </div>
            </div>
            <div class="info-pair">
                <div class="info-section">
                    <h4>Security</h4>
                    <p>Your payment information is encrypted and securely transmitted to protect your personal details.</p>
                </div>
                <div class="info-section">
                    <h4>Customer Support</h4>
                    <p>If you encounter any issues, our customer support team is available 24/7 to assist you with your payment.</p>
                </div>
            </div>
            <div class="contact-info">
                <h4>Payment Support</h4>
                <p>If your payment fails, please contact our support team:</p>
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
