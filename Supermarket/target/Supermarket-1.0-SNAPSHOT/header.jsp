<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Keells Online</title>
    <link rel="stylesheet" href="header.css"/>
   
</head>
<body>

    <header id="header">
        <img src="Porsche-Emblem.png" alt="Logo" id="logo" class="logo">
       
        <div class="dropdown">
            <button class="dropbtn" id="dropbtn">Categories</button>

            <div class="dropdown-content" id="dropdown-content">
              <a href="Vegetables.jsp">Vegetables</a>
              <a href="#">Link 2</a>
              <a href="#">Link 3</a>
            </div>

          </div>
          <div id="search-bar" class="search-bar" >
            <input type="text" placeholder=" Search . . .">
            <button type="submit" action="" onclick="search()">Search</button>
        </div>
        
        <div>
            <button id="login-btn" onclick="login()">Login</button>
            <button id="signup-btn" onclick="signup()">Sign Up</button>
            <button id="cart-btn" onclick="addToCart()">Add to Cart</button>
        </div>
    </header>

<!-- 2nd  Navigation -->
<nav>
    <a href="index.jsp">Home</a> |
    <a href="#">Shop</a> |
    <a href="#">Specials</a> |
    <a href="#">Contact</a>
    
    
  </nav>

    <!-- End Of Header -->

    <script src="script.js"></script>

</body>
</html>
