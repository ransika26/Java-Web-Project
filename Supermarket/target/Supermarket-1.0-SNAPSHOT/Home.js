
  let currentSlideIndex = 0;

  function showSlide(index) {
    const slides = document.querySelector('.slides');
    const slideWidth = document.querySelector('.slide').offsetWidth;
    slides.style.transform = `translateX(-${index * slideWidth}px)`;
    currentSlideIndex = index;
    updateDots();
  }

  function currentSlide(index) {
    showSlide(index);
  }

  function updateDots() {
    const dots = document.querySelectorAll('.dot');
    dots.forEach((dot, index) => {
      dot.classList.toggle('active-dot', index === currentSlideIndex);
    });
  }

  // Automatic slide transition
  setInterval(() => {
    currentSlideIndex = (currentSlideIndex + 1) % 3; // 3 is the number of slides
    showSlide(currentSlideIndex);
  }, 3000); // Change slide every 3 seconds

