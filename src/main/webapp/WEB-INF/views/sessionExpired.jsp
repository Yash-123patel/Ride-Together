<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Session Expired</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 50px;
            text-align: center;
        }
        h1 {
            color: #ff6b81;
        }
        p {
            font-size: 18px;
            margin: 20px 0;
        }
        a {
            text-decoration: none;
            background-color: #ff6b81;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
        }
        a:hover {
            background-color: #ff4b61;
        }
        .tips {
            margin-top: 30px;
            font-size: 16px;
            color: #555;
            text-align: left;
            display: inline-block;
            max-width: 400px;
        }
    </style>
</head>
<body>

    <h1>Session Expired</h1>
    <p>Your session has expired due to inactivity. For your security, you will need to log in again.</p>
    
    <div class="tips">
        <h3>Tips to Avoid This in the Future:</h3>
        <ul>
            <li>Stay active while using the application to keep your session alive.</li>
            <li>If you need to take a break, consider saving your work before leaving.</li>
            <li>Make sure to log out when you're finished for added security.</li>
        </ul>
    </div>

    <p>Please log in again to continue using Ride Together.</p>
    <a href="userlogin">Login Again</a>
    
    <footer style="margin-top: 50px;">
        <p>&copy; 2024 Ride Together. All Rights Reserved.</p>
    </footer>

</body>
</html>
