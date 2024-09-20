<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Something Went Wrong</title>
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
            color: #e74c3c;
        }
        p {
            font-size: 18px;
            margin: 20px 0;
        }
        a {
            text-decoration: none;
            background-color: #e74c3c;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
        }
        a:hover {
            background-color: #c0392b;
        }
        .suggestions {
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

    <h1>Something Went Wrong</h1>
    <p>We encountered an unexpected issue while processing your request. Please try again later.</p>
    
    <div class="suggestions">
        <h3>Here are some things you can try:</h3>
        <ul>
            <li>Refresh the page.</li>
            <li>Check your internet connection.</li>
            <li>Try logging out and back in.</li>
            <li>If the problem persists, contact support.</li>
        </ul>
    </div>

    <p>If you'd like, you can return to the home page.</p>
    <a href="userlogin">Go to Home</a>
    
    <footer style="margin-top: 50px;">
        <p>&copy; 2024 Ride Together. All Rights Reserved.</p>
    </footer>

</body>
</html>
