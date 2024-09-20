<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="icon" href="logo2.jpg">
    <style>
<%@include file="/AllCssFiles/register.css"  %>
</style>
</head>
<body>
<%String message=(String)request.getAttribute("message"); %>
    <div class="container">
        <div class="img">
          <img src="hm.jpg" alt="" width=" 70px"   height=" 70px">
        </div>
        <header>Register Your Details Here</header>
        <%if(message!=null) {%>
            <h2 id="message"><%=message %></h2>
            <%} %>
        
        <form:form action="register" method="post" modelAttribute="user">
            <div class="fields">
                <div class="field half-width">
                    
                    <label for="fullname">FULL NAME <span class="red-star">★</span></label>
                    <form:errors path="fullName" cssClass="error" />
                    <form:input  path="fullName" type="text" placeholder="Full Name" id="fullname"/>
                </div>
            </div>

            <div class="fields">
            
                <div class="field half-width">
                 
                    <label for="email">EMAIL <span class="red-star">★</span></label>
                    <form:errors path="email" cssClass="error"/>
                    <form:input type="email" placeholder="Email" path="email" id="email"/>
                </div>
            </div>

            <div class="fields">
                <div class="field half-width">
                 
                    <label for="password">PASSWORD <span class="red-star">★</span></label>
                    <form:errors path="password" cssClass="error"/>
                    <form:input type="password" placeholder="Password" path="password" id="password"/>
                </div>
            </div>

            <div class="fields">

                 <div class="field half-width">
                     <label for="confirm-password">CONFIRM PASSWORD<span class="red-star">★</span></label>
                    <input type="password" placeholder="Confirm Password" name="confirm-password" id="confirm-password">
                </div>
            </div>

            <div class="fields">
                <div class="field half-width">
                    <label for="mobileNO">MOBILENO <span class="red-star">★</span></label>
                     <form:errors path="mobileNo" cssClass="error"/>
                    <form:input type="tel" placeholder="Phone" path="mobileNo" id="mobileNO"/>
                </div>
            </div>

            <div class="fields">
                <div class="field half-width">
                 
                    <label for="aadhar">AADHARNO <span class="red-star">★</span></label>
                    <form:errors path="aadharNo" cssClass="error"/>
                    <form:input type="number" placeholder="aadhar" path="aadharNo" id="aadhar"/>
                </div>
            </div>

            <div class="fields">
                <div class="field half-width">
                 
                    <label for="address">ADDRESS <span class="red-star">★</span></label>
                    <form:errors path="address" cssClass="error"/>
                    <form:input type="text" placeholder="Address" path="address" id="address"/>
                </div>
            </div>

            <div class="fields">
                <div class="field half-width">
                 
                    <label for="license">LICENSENO <span class="red-star">★</span></label>
                    <form:errors path="licenseNo" cssClass="error"/>
                    <form:input type="text" placeholder="licenseNo" path="licenseNo" id="license"/>
                </div>
            </div>

            <div class="btn">
                <input type="submit" value="SUBMIT">
            </div>
            <div class="signup">
                Already have an account? <a href="userlogin">Sign in Now</a>
            </div>
        </form:form>
    </div>
</body>
</html>
