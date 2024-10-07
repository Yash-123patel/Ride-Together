<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Return Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 20px;
    }
    .container {
        max-width: 600px;
        margin: auto;
        background: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        color: #333;
    }
    p {
        color: #555;
        line-height: 1.6;
    }
    .btn {
        display: inline-block;
        margin: 20px 0;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
    }
    .btn:hover {
        background-color: #0056b3;
    }
    .footer {
        margin-top: 20px;
        font-size: 0.9em;
        color: #777;
    }
</style>
</head>
<body>
<% Integer extra = (Integer) request.getAttribute("extra"); %>
<div class="container">
    <h1>Car Return Successful!</h1>
    <p>Thank you for returning the car.</p>
    <h1>You need to pay an extra charge that is: <%= extra %></h1>
    <p class="message">Consider renting again for your future travels.</p>
    <p>If you have any questions, please contact our <a href="mailto:patelyash2502702@gmail.com">support team</a>.</p>
    <a href="index.jsp" class="btn">Go to Home</a>
    <div class="footer">
        <p>Need more help? <a href="index.jsp#contact">Contact us</a></p>
    </div>
</div>
</body>
</html>
