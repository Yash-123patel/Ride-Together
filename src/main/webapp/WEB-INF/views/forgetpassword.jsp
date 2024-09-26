<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ride Together PassWord</title>

    <style>
        body {
            background: rgb(99, 140, 187);
            background: radial-gradient(circle, rgb(10, 98, 51) 54%, rgba(10, 3, 60, 0.97) 100%);
            background-repeat: no-repeat;
            background-size: cover;
            padding: 0;
            margin: 0;
            height: 100vh;
            width: 100vw;
            font-family: Arial, Helvetica, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .container {
            background-color: white;
            width: 380px;
            margin: auto;
            height: 500px;
            border-radius: 25px;
            box-shadow: 0 0 10px black;
        }
        
        #account {
            position: relative;
            font-size: 90px;
            color: #e1cfcf;
            padding: 19px;
            background: rgb(99, 140, 187);
            background: radial-gradient(circle, rgb(10, 98, 51) 54%, rgba(10, 3, 60, 0.97) 100%);
            border-radius: 10px;
            border-bottom-left-radius: 100px;
            border-bottom-right-radius: 100px;
            top: -60px;
            left: calc(50% - 74px);
            box-shadow: 0 0 5px black;
        }
        
        .tabs {
        margin-top:80px;
            display: flex;
            position: relative;
            top: -25px;
            justify-content: center;
            color: rgb(73, 71, 71);
            height: 25px;
        }
        
        .login-tab {
            width: 50%;
            text-align: center;
            padding-bottom: 10px;
            margin: auto 25px;
            cursor: pointer;
        }
        
        .login-tab:hover {
            color: rgb(10, 51, 98);
            border-bottom: 4px solid rgb(10, 51, 98);
        }
        .active{
            color: rgb(10, 51, 98);
            border-bottom: 4px solid rgb(10, 51, 98);
        }
        #login-form {
            display: block;
            padding-top: 25px;
        }
        
        form {
            width: 90%;
            display: flex;
            flex-direction: column;
            margin: 15px auto;
        }
        
        input {
            height: 27px;
            margin: 5px;
            border-radius: 15px;
            border: none;
            outline: none;
            background-color: rgb(209, 209, 209);
            padding: 5px;
            font-size: 17px;
            color: rgb(73, 73, 73);
            text-align: center;
        }
        
        p {
            margin: 0;
            padding: 0;
        }
        
        .options {
            display: flex;
            align-items: center;
            margin-top: 25px;
            font-style: italic;
        }
        
        .remember {
            display: flex;
            align-items: center;
            width: 50%;
            text-align: center;
        }
        
        #button {
            margin: 20px auto;
            font-size: 20px;
            background-color: rgb(10, 98, 51);
            color: white;
            padding: 10px 45px;
            border-radius: 18px;
            box-shadow: 0 0 2px rgb(117, 113, 113);
            border: none;
            height: 40px;
            cursor: pointer;
        }
        
        #button:hover {
            background-color: rgba(0, 81, 255, 0.781);
        }
        #registration-form{
            display: none;
        }
        .tnc{
            display: flex;
            align-items: center;
            margin: auto;
            color: rgb(54, 52, 52);
            font-style: italic;
        }
        
      #message{
         color: red;
         font-size: 10px;
      }
      
       

    </style>
</head>

<body>
    <div class="container">
        <div class="tabs">
            <h2 class="Forgot Password">New Password</h2>
        </div>
        
        <%String message=(String)request.getAttribute("pass"); %>
        <%if(message!=null){ %>
          <h1 id="message"><%=message %></h1>
        <%} %>
        <div id="login-form">
            <form action="forgotPassWord" method="POST" onsubmit="return forgot()">
                <input type="email" name="email" id="email" placeholder="Email">
                <input type="password" name="password" id="pass" placeholder="Newpassword">
                <input type="password" name="New password" id="cpass" placeholder="Confirmpassword">
                <div class="options">
                    <div class="remember">
                        <input type="checkbox" name="rem" id="rem">
                        <p>Remember Me</p>
                    </div>
                    <a href="userlogin">Log in?</a>
                </div>
                <input type="submit" id="button">
            </form>
        </div>

    </div>
    

    <script>
        function forgot()
        {
            let uname=document.getElementById("username");
            let pword=document.getElementById("pass");
            let cpass=document.getElementById("cpass")
            if(uname.value.trim()=="")
           {
               window.alert("User name can not be empty");
               return false;
           }
           else if(uname.value.trim().length<5)
           {
              window.alert("username minimum 5 letters");
              return false;
           }
           else if(pword.value.trim()=="")
           {
            alert("password can not be empty");
            return false;
           }
           else if(pword.value.trim().length<8)
           {
            alert("password minimum 8 charcaters");
            return false;
           }
           else if(cpass.value<8)
           {
              window.alert("password must be same");
              return false;
           }
           else if(cpass.value!=pword.value)
           {
            window.alert("Wrong password");
            return false;
           }
           else {
            window.confirm("Password change successfylly");
    
           }
        }

    </script>
</body>

</html>