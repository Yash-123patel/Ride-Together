<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ride Together</title>
    <link rel="icon" href="logo.png">
    <style>
<%@include file="/AllCssFiles/availablecars.css"  %>
</style>
</head>
<body>
    
    <div class="container">
        <header>
                <nav>
                    <ul>
                        <li><a href="home.html">Home</a></li>
                        <li><a href="bookdate.html">Back</a></li>
                    </ul>
                </nav>
        </header>
        <img src="logo.png" alt="Ride Together" style="width: 200px; height: auto; margin-bottom: 20px;">
        <h1>Available Cars</h1>
        <div class="choose-car-tips">
            <h2>Always Choose The Right Car</h2>
            <p>Choosing the right car can make your journey comfortable and enjoyable. Here are some tips to help you decide:</p>
            <ul>
                <li><strong>Consider Your Group Size:</strong> For a solo or small group, a compact car like the Swift or WagonR might be perfect. For larger groups or families, consider the Innova or XUV.</li>
                <li><strong>Budget:</strong> Keep your budget in mind. Our cars range from 2000 to 15000 per day, so choose one that fits your budget while meeting your needs.</li>
                <li><strong>Purpose of the Trip:</strong> For city travel, a smaller car like the Swift is ideal. For off-road or countryside trips, consider SUVs like the Scorpio or XUV.</li>
                <li><strong>Comfort Features:</strong> Look for cars that offer the comfort features you need, such as air conditioning, spacious seating, and ample luggage space.</li>
                <li><strong>Fuel Efficiency:</strong> If you plan to travel long distances, consider a car with good fuel efficiency to save on costs.</li>
            </ul>
            <p>Take a look at the car options below and select the one that best suits your needs!</p>
        </div>
        <div class="car-grid">
            <div class="car" data-car-id="C001" onclick="selectCar('C001')">
                <img src="swift.jpg" alt="Car Image 1">
                <div class="car-info">
                    <div class="car-name">Swift&nbsp;- C001</div>
                    <div class="car-charge">Per Day: 2500</div>
                    <div class="car-rating">Rating: ★★★★☆</div>
                </div>
            </div>
            <div class="car" data-car-id="C002" onclick="selectCar('C002')">
                <img src="innova.jpg" alt="Car Image 2">
                <div class="car-info">
                    <div class="car-name">Innova&nbsp;- C002</div>
                    <div class="car-charge">Per Day: 7000</div>
                    <div class="car-rating">Rating: ★★★★★</div>
                </div>
            </div>
            <div class="car" data-car-id="C003" onclick="selectCar('C003')">
                <img src="hond.jpg" alt="Car Image 3">
                <div class="car-info">
                    <div class="car-name">Honda City&nbsp;- C003</div>
                    <div class="car-charge">Per Day: 5500</div>
                    <div class="car-rating">Rating: ★★★★☆</div>
                </div>
            </div>
            <div class="car" data-car-id="C004" onclick="selectCar('C004')">
                <img src="scorpio.jpg" alt="Car Image 4">
                <div class="car-info">
                    <div class="car-name">Scorpio&nbsp;- C004</div>
                    <div class="car-charge">Per Day: 6000</div>
                    <div class="car-rating">Rating: ★★★☆☆</div>
                </div>
            </div>
            <div class="car" data-car-id="C005" onclick="selectCar('C005')">
                <img src="verna.jpg" alt="Car Image 5">
                <div class="car-info">
                    <div class="car-name">Verna&nbsp;- C005</div>
                    <div class="car-charge">Per Day: 4500</div>
                    <div class="car-rating">Rating: ★★★★☆</div>
                </div>
            </div>
            <div class="car" data-car-id="C006" onclick="selectCar('C006')">
                <img src="Xuv.jpg" alt="Car Image 6">
                <div class="car-info">
                    <div class="car-name">XUV&nbsp;- C006</div>
                    <div class="car-charge">Per Day: 4000</div>
                    <div class="car-rating">Rating: ★★★★★</div>
                </div>
            </div>
            <div class="car" data-car-id="C008" onclick="selectCar('C008')">
                <img src="wagonr.jpg" alt="Car Image 8">
                <div class="car-info">
                    <div class="car-name">WagorR&nbsp;- C008</div>
                    <div class="car-charge">Per Day: 2000</div>
                    <div class="car-rating">Rating: ★★★★☆</div>
                </div>
            </div>
            <div class="car" data-car-id="C009" onclick="selectCar('C009')">
                <img src="Tavera.jpg" alt="Car Image 9">
                <div class="car-info">
                    <div class="car-name">Scorpio&nbsp;- C009</div>
                    <div class="car-charge">Per Day: 3500</div>
                    <div class="car-rating">Rating: ★★★☆☆</div>
                </div>
            </div>
            <div class="car" data-car-id="C010" onclick="selectCar('C010')">
                <img src="vitara.jpg" alt="Car Image 10">
                <div class="car-info">
                    <div class="car-name">Vittara&nbsp;- C010</div>
                    <div class="car-charge">Per Day: 3500</div>
                    <div class="car-rating">Rating: ★★★★☆</div>
                </div>
            </div>
        </div>
        <form id="carForm" action="login.html" method="POST" style="display:none;">
            <input type="hidden" id="car-id" name="car-id">
        </form>
        <div class="additional-info" >
            <h3>Why Choose Us?</h3>
            <p>At Ride Together, we prioritize your comfort, safety, and satisfaction. Our fleet of well-maintained cars ensures a smooth ride every time. With flexible pricing and a variety of car options, we cater to every need and occasion. Book with us for a hassle-free experience!</p>
            <p>Need help choosing a car? Contact our support team anytime, and we'll assist you in making the best choice for your journey.</p>
        </div>
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
    
    </div>
   

    
    <script>
        function selectCar(carId) {
            document.getElementById('car-id').value = carId;
            document.getElementById('carForm').submit();
        }
    </script>
</body>
</html>
    