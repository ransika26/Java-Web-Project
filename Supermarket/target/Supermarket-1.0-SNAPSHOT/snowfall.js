/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */



document.addEventListener('DOMContentLoaded', function () {
  const snowflakesContainer = document.createElement('div');
  snowflakesContainer.classList.add('snowflakes-container');
  document.body.appendChild(snowflakesContainer);

  const numberOfSnowflakes = 10; 

  for (let i = 0; i < numberOfSnowflakes; i++) {
    createSnowflake();
  }

  function createSnowflake() {
    const snowflake = document.createElement('div');
    snowflake.classList.add('snowflake');
    snowflake.style.left = `${Math.random() * 100}vw`;
    snowflake.style.animationDuration = `${Math.random() * 2 + 1}s`;
    snowflakesContainer.appendChild(snowflake);
  }
});