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

function autoSlide() {
  document.getElementById(currentSlide).classList.remove("active");
  if (currentSlide < 2) {
    currentSlide += 1;
  } else {
    currentSlide = 0;
  }
  document.getElementById(currentSlide).classList.add("active");
  showSlide();
}

setInterval(autoSlide, 6500);
//

const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const movieid = urlParams.get("id");

const BASE_URL = "https://api.themoviedb.org/3";
const image_url = "https://image.tmdb.org/t/p/original/";
const API_KEY = "a527eb9bc54324ce4f762ac2b6d36ae6";
const requestActor = `/movie/${movieid}/credits`;

const main_movie = document.querySelector(".main_movie");
const movie_item = document.querySelector(".movie_item");
const info_film = document.querySelectorAll("info_film");

fetch(`${BASE_URL}${requestActor}?api_key=${API_KEY}`)
  .then((response) => response.json())
  .then((data) => {
    data.cast.map((_actor) => {
      if (_actor.profile_path != null && _actor.profile_path != "") {
        main_movie.innerHTML += `<div class="movie_item"><a href="actor?id=${_actor.id}"><img src="${image_url}${_actor.profile_path}" alt=""></a><div class="info_film"><h3>${_actor.name}</h3></div><div class="overlay-film_scroll"></div></div>`
      }
    });
  });
