<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>No Upcoming Rides</title>
    <link rel="stylesheet" href="/ride/AllCSS/styles.css"> <!-- Add your CSS file here -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        h1 {
            color: #ff6b81;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
            text-align: center;
            margin-bottom: 30px;
        }

        .back-button {
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .back-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h1>No Upcoming Rides</h1>
    <p>It looks like you don't have any upcoming rides scheduled at the moment.</p>
    <p>Please check back later or explore our services.</p>
    <a href="/" class="back-button">Go Back to Home</a>
</body>
</html>
