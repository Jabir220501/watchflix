let currentSlide = 0;
const slides = document.querySelectorAll(".movie");

function showSlide() {
  for (let i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  slides[currentSlide].style.display = "flex";
}

function plusSlides(n) {
  document.getElementById(currentSlide).classList.remove("active");
  currentSlide = (currentSlide + n + slides.length) % slides.length;
  document.getElementById(currentSlide).classList.add("active");

  showSlide();
}

function director(n) {
  document.getElementById(currentSlide).classList.remove("active");
  currentSlide = n;
  document.getElementById(n).classList.add("active");
  showSlide();
}

function autoSlide(){
  document.getElementById(currentSlide).classList.remove("active");
  if(currentSlide < 2){
    currentSlide += 1
  }else{
    currentSlide = 0
  }
  document.getElementById(currentSlide).classList.add("active");
  showSlide();
}

setInterval(autoSlide, 6500);
