<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ride Together</title>
    <link rel="stylesheet" href="/AllCssFiles/index.css">
    <link rel="icon" href="/ride/AllImages/logo.jpg">
</head>
<style>
<%@include file="AllCssFiles/index.css"  %>
</style>
<body>
    <div class="top-image">
        <img src="/ride/AllImages/logo.jpg" id="logo">
       
    </div>

    <header>
        <div class="container">
            <h1>Ride Together</h1>
            <nav>
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="#testimonials">Testimonials</a></li>
                    <li><a href="#faq">FAQ</a></li>
                    <li><a href="#news">Latest News</a></li> 
                </ul>
            </nav>
        </div>
    </header>

    <section id="home" class="hero">
        <div class="container">
            <h2>Your Trusted Partner in Car Rentals</h2>
            <p>Experience hassle-free car rentals tailored to your needs. Reserve your ride today!</p>
            <p>Pick Your Dream Car Here</p><br>
            <a href="userlogin" class="btn-primary">Book A Car</a>
        </div>
    </section>

    <section id="services" class="services">
        <div class="container">
            <h2>Our Services</h2>
            <div class="service-list">
                <div class="service">
                    <img src="/ride/AllImages/logo.jpg" alt="Luxury Cars" class="service-icon">
                    <h3>Luxury Cars</h3>
                    <p>Drive in style with our selection of luxury cars. Perfect for business trips, special occasions, or just treating yourself to a premium ride.</p>
                </div>
                <div class="service">
                    <img src="/ride/AllImages/logo.jpg" alt="Economy Cars" class="service-icon">
                    <h3>Economy Cars</h3>
                    <p>Our economy cars are budget-friendly and fuel-efficient, ideal for daily commutes and road trips.</p>
                </div>
                <div class="service">
                    <img src="/ride/AllImages/logo.jpg" alt="Customer Support" class="service-icon">
                    <h3>24/7 Customer Support</h3>
                    <p>Our dedicated support team is available around the clock to assist with your rental needs, ensuring a smooth and enjoyable experience.</p>
                </div>
            </div>
        </div>
    </section>
    

    <section id="about" class="about">
        <div class="container about-content">
            <h2>About Us</h2>
            <p>Founded in 2000, Ride Together has been providing top-notch rental services with a focus on customer satisfaction. We offer a wide variety of vehicles to suit every need, from luxury sedans to compact cars.</p>
            <p>Our mission is to make car rentals easy, affordable, and accessible for everyone. Whether you’re traveling for business or leisure, we have the perfect car for you.</p>
            <p>Learn more about our journey, values, and the team that drives our success.</p>
        </div>
    </section>

    <section id="contact" class="contact">
        <div class="container contact-content">
            <h2>Contact Us</h2>
            <div class="contact-info">
                <div class="contact-item">
                    <h3>Head Office</h3>
                    <p>123 Rental Avenue, Car City, CC 45678</p>
                    <p>Phone: +1 (123) 456-7890</p>
                    <p>Email: <a href="mailto:support@ridetogether.com">support@ridetogether.com</a></p>
                </div>
                <div class="contact-item">
                    <h3>Branch Office</h3>
                    <p>456 Travel Road, Auto Town, AT 12345</p>
                    <p>Phone: +1 (987) 654-3210</p>
                    <p>Email: <a href="mailto:branch@ridetogether.com">branch@ridetogether.com</a></p>
                </div>
                <div class="contact-item">
                    <h3>Customer Support Center</h3>
                    <p>789 Service Road, Help City, HC 67890</p>
                    <p>Phone: +1 (555) 123-4567</p>
                    <p>Email: <a href="mailto:supportcenter@ridetogether.com">supportcenter@ridetogether.com</a></p>
                </div>
            </div>
            <div class="contact-form">
                <h3>Send Us a Message</h3>
                <form action="/submit-form" method="post">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="John Doe" required>
                    
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="john.doe@example.com" required>
                    
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="6" placeholder="Your message here..." required></textarea>
                    
                    <button type="submit">Send Message</button>
                </form>
            </div>
            
        </div>
    </section>

    <section id="testimonials" class="testimonials">
        <div class="container">
            <h2>What Our Clients Say</h2>
            <div class="testimonial">
                <blockquote>
                    <p>"Ride Together made my vacation stress-free with their reliable cars and excellent service."</p>
                    <footer>- Jane Doe</footer>
                </blockquote>
            </div>
            <div class="testimonial">
                <blockquote>
                    <p>"Great experience with Ride Together. The booking process was simple and the car was in perfect condition."</p>
                    <footer>- John Smith</footer>
                </blockquote>
            </div>
            <div class="testimonial">
                <blockquote>
                    <p>"I appreciate the friendly customer service and the wide selection of vehicles. Highly recommend Ride Together."</p>
                    <footer>- Sarah Lee</footer>
                </blockquote>
            </div>
        </div>
    </section>

    <section id="faq" class="faq">
        <div class="container">
            <h2>Frequently Asked Questions</h2>
            <div class="faq-item">
                <h3>How do I rent a car?</h3>
                <p>You can rent a car by visiting our branch or booking online through our website. Choose your car, select your dates, and provide the necessary documents.</p>
            </div>
            <div class="faq-item">
                <h3>What documents are required for car rental?</h3>
                <p>You will need a valid driver's license, credit card, and proof of insurance. International renters may need a passport and additional documentation.</p>
            </div>
            <div class="faq-item">
                <h3>What is the age requirement for renting a car?</h3>
                <p>Renters must be at least 21 years old. Some car categories may have additional age restrictions or fees for drivers under 25.</p>
            </div>
        </div>
    </section>

    <section id="news" class="news">
        <div class="container">
            <h2>Latest News</h2>
            <div class="news-item">
                <h3>Introducing Our New Fleet of Electric Cars</h3>
                <p>We're excited to expand our green initiatives with the addition of electric cars to our fleet. These vehicles offer an eco-friendly and cost-effective rental option.</p>
            </div>
            <div class="news-item">
                <h3>Special Discounts for Members</h3>
                <p>Join our loyalty program to enjoy exclusive discounts and offers on your car rentals. Sign up today and start saving on your next trip!</p>
            </div>
            <div class="news-item">
                <h3>New Locations Opening Soon</h3>
                <p>We’re expanding to better serve you! New branches are set to open in major cities across the country. Stay tuned for more updates.</p>
            </div>
        </div>
    </section>

   

    <section id="cities" class="city-list">
        <div class="container">
            <h1>Top States and Cities</h1>
            <p>Explore the top states and their most popular cities where you can rent cars. Whether you're traveling for business or leisure, these states and cities offer a range of rental options to suit your needs.</p>
            <div class="state-list">
                <div class="state">
                    <h2>Maharashtra</h2>
                    <ul>
                        <li>Book Car In Mumbai</li>
                        <li>Book Car In Pune</li>
                        <li>Book Car In Nashik</li>
                        <li>Book Car In Nagpur</li>
                        <li>Book Car In Wardha</li>
                    </ul>
                </div>
               
                <div class="state">
                    <h2>Madhya Pradesh</h2>
                    <ul>
                        <li>Book Car In Indore</li>
                        <li>Book Car In Bhopal</li>
                        <li>Book Car In Jabalpur</li>
                        <li>Book Car In Ujjain</li>
                        <li>Book Car In Rewa</li>
                        <li>Book Car In Sagar</li>
                    </ul>
                </div>
                <div class="state">
                    <h2>UttarPradesh</h2>
                    <ul>
                        <li>Book Car In Kanpur</li>
                        <li>Book Car In Lucknow</li>
                        <li>Book Car In Agra</li>
                        <li>Book Car In Mathura</li>
                        <li>Book Car In Vrindavan</li>
                        <li>Book Car In Praygraj</li>
                        <li>Book Car In Varanasi</li>
                    </ul>
                </div>
                <div class="state">
                    <h2>Karnataka</h2>
                    <ul>
                        <li>Book Car In Bangalore</li>
                        <li>Book Car In Mangalore</li>
                        <li>Book Car In Hubli</li>
                        <li>Book Car In Belagavi</li>
                        <li>Book Car In Mysuru</li>
                        <li>Book Car In Udupi</li>
                    </ul>
                </div>
                <div class="state">
                    <h2>Rajasthan</h2>
                    <ul>
                        <li>Book Car In Jaipur</li>
                        <li>Book Car In Udaipur</li>
                        <li>Book Car In Jodhpur</li>
                        <li>Book Car In Jaisalmer</li>
                        <li>Book Car In Aamer</li>
                        <li>Book Car In BhhelWada</li>
                    </ul>
                </div>
                <div class="state">
                    <h2>Gujarat</h2>
                    <ul>
                        <li>Book Car In Ahmedabad</li>
                        <li>Book Car In Surat</li>
                        <li>Book Car In Vadodara</li>
                        <li>Book Car In Rajkot</li>
                        <li>Book Car In Gandhinagar</li>
                        <li>Book Car In Junagadh</li>
                    </ul>
                </div>
                <div class="state">
                    <h2>Telangana</h2>
                    <ul>
                        <li>Book Car In Hyderabad</li>
                        <li>Book Car In Warangal</li>
                        <li>Book Car In Khammam</li>
                        <li>Book Car In Secundrabad</li>
                        <li>Book Car In Nalgonda</li>
                    </ul>
                </div>
                <div class="state">
                    <h2>Himachal Pradesh</h2>
                    <ul>
                        <li>Book Car In Dharamsala</li>
                        <li>Book Car In Manali</li>
                        <li>Book Car In Kullu</li>
                        <li>Book Car In Manikarn</li>
                        <li>Book Car In Parli</li>
                        
                    </ul>
                </div>
               
               
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; 2024 Ride Together. All rights reserved.</p>
            <p>Privacy Policy | Terms of Service</p>
        </div>
    </footer>
</body>
</html>
    