<%-- 
    Document   : SignUp-Login
    Created on : Dec 3, 2023, 11:35:28 AM
    Author     : Gayan Wickz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="SignUp-Login.css">
  <title>Super Market Login</title>
</head>
<body>
  <div class="container">
    <input type="checkbox"  id="flip">
    <div class="cover">
      <div class="front">
        <img src="img1.jpg" alt="">
        <div class="text">
          <span class="text-1">Every new friend is a<br> new adventure</span>
          <span class="text-2">Let's get conncted</span>
        </div>
      </div>
      <div class="back">
        <img class="backImg" src="img2.jpg" alt="">
        <div class="text">
          <span class="text-1">Complete miles of journey<br> with one step</span>
          <span class="text-2">Let's get started</span>
        </div>
      </div>
    </div>
    <form action="#">
     <div class="form-content">
      <div class="login-form">
        <div class="title">Login</div>
        <div class="input-boxes">
          <div class="input-box">
            <i class="fas fa-envelope"></i>
            <input type="text" placeholder="Enter your Email" required>
          </div>
          <div class="input-box">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Enter your password" required>
          </div>
          <div class="text"><a href="#">Forgot password</a></div>
          <div class="button input-box">
            <input type="submit" value="submit">
          </div>
          <div class="text sign-up-text">Don't have an account? <label for="flip">Sign Up now</label></div>
        </div>
      </div>
      <div class="signup-form">
        <div class="title">Sign Up</div>
        <div class="input-boxes">
          <div class="input-box">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <i class="fas fa-envelope"></i>
            <input type="text" placeholder="Enter your Email" required>
          </div>
          <div class="input-box">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Enter your password" required>
          </div>
          <div class="button input-box">
            <input type="submit" value="submit">
          </div>
          <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
        </div>
      </div>
     </div>
    </form>
  </div>
  
</body>
</html>