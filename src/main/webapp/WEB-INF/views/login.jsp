<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Ride Together</title>
      <link rel="icon" href="/ride/AllImages/logo.jpg">
      <link rel="stylesheet" href="login.css">
      
<style>
<%@include file="/AllCssFiles/login.css"  %>
</style>
   </head>
   <body>
   <%String message=(String)request.getAttribute("message"); %>
      <div class="bg-img">
         <div class="content">
         
            <%if(message!=null){ %>
            <h2 id="message"><%=message %></h2>
            <%} %>
           
            <header>Login Here</header>
            <form action="login" method="post" onsubmit="return checkEmailAndPassword()">
               <div class="field">
                  <span class="fa fa-user"></span>
                  <input type="text" required placeholder="Email"name="email" id="email">
               </div>
               <div class="field space">
                  <span class="fa fa-lock"></span>
                  <input type="password" class="pass-key" required placeholder="password" name="password" id="password">
   
               </div>
               <div class="field">
                  <input type="submit" value="LOGIN">
               </div>
            </form>
            <div class="login">
               Or login with
            </div>
            <div class="links">
               <div class="instagram">
                  <i class="fab fa-google-plus-g"><span>Google</span></i>
               </div>
            </div>
            <div class="signup">
               Don't have account?
               <a href="userregister">Signup Now</a>
            </div>
            <div class="forgot">
                Forget Password?
                <a href="fogetPassword">Forget</a>
             </div>
         </div>
      </div>
   </body>
   <script type="text/javascript">
	let regpassword = /[a-z A-Z 0-9 @#$%&*_]{8,12}/;
	let regemail=/^[a-zA-Z0-9._%+-]+@gmail\.com$/;
	
	function checkEmailAndPassword() {
		let email=document.getElementById("email");
		let password = document.getElementById("password");
		
		
		 if(!email.value.match(regemail)){
			 window.alert("Invalid Email address");
             return false;
		 }
		 
		
		 if (!password.value.match(regpassword)) {
             window.alert("Password Must Contains Combination of\n lowercase,uppercse, and special character");
             return false;
         }	 
	}
	
</script>
</html>