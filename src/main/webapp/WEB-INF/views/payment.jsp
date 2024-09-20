<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Options</title>
    <link rel="icon" href="/ride/AllImages/logo.jpg">
    <link rel="stylesheet" type="text/css" href="/AllCssFiles/payment.css">
    <style>
        <%@include file="/AllCssFiles/payment.css"  %>
    </style>
</head>
<body>
    <div class="container">
        <div class="form-container">
            <img src="/ride/AllImages/logo.jpg" alt="Car Rental Logo" style="width: 100px; height: auto; display: block; margin: 0 auto 20px;">
            <h2>Payment Options</h2>
            <form id="paymentForm" action="doPayment">
                <div class="payment-option">
                    <input type="radio" id="creditCard" name="paymentMethod" value="creditCard" required>
                    <img src="/ride/AllImages/credit.jpg" alt="Credit Card">
                    <label for="creditCard">Credit Card</label>
                </div>
                <div class="payment-option">
                    <input type="radio" id="debitCard" name="paymentMethod" value="debitCard">
                    <img src="/ride/AllImages/debit.jpg" alt="Debit Card">
                    <label for="debitCard">Debit Card</label>
                </div>
                <div class="payment-option">
                    <input type="radio" id="upi" name="paymentMethod" value="upi">
                    <img src="/ride/AllImages/qr.jpg" alt="UPI QR Code">
                    <label for="upi">UPI QR Code</label>
                </div>
                <div class="payment-option">
                    <input type="radio" id="netBanking" name="paymentMethod" value="netBanking">
                    <img src="/ride/AllImages/net.jpg" alt="Net Banking">
                    <label for="netBanking">Net Banking</label>
                </div>
                <div id="card-element">
                    <!-- A Stripe Element will be inserted here. -->
                </div>
                <button type="submit">Proceed to Payment</button>
            </form>
            
        </div>
        <div class="sidebar">
            <h3>Payment Options</h3>
            <div class="payment-info">
                <h4>Credit Card</h4>
                <p>The ultimate convenience for online transactions. Credit cards offer rewards, fraud protection, and are widely accepted globally.</p>
                <h4>Debit Card</h4>
                <p>Directly linked to your bank account, debit cards help manage your spending by withdrawing funds directly from your account.</p>
                <h4>UPI QR Code</h4>
                <p>Quick and secure mobile transactions. UPI allows you to pay using a QR code and is gaining popularity for its ease of use.</p>
                <h4>Net Banking</h4>
                <p>Secure payments made directly from your bank account. It avoids the need for a card and ensures direct transactions.</p>
            </div>
        </div>
    </div>
</body>
</html>
