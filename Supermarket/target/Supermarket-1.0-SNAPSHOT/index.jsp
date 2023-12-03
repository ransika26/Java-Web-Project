<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="Home.css"/>
<import></import>
</head>
<body>
<%@ include file="header.jsp" %>
<div class="slider-container">
  <div class="slides">
    <div class="slide"><img src="DirectImportCarousel.jpg" alt="Image 1"></div>
    <div class="slide"><img src="FreshVegetablesWebBanner.png" alt="Image 2"></div>
    <div class="slide"><img src="slide1.jpg" alt="Image 3"></div>
    <!-- Add more slides as needed -->
  </div>

  <!-- Navigation dots -->
  <div class="dots">
    <div class="dot" onclick="currentSlide(0)"></div>
    <div class="dot" onclick="currentSlide(1)"></div>
    <div class="dot" onclick="currentSlide(2)"></div>
    <!-- Add more dots as needed -->
  </div>
</div>

<script src="Home.js"></script>
</body>
</html>
