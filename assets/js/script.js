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

// Actors
const queryString = window.location.search;
const urlParams = new URLSearchParams(queryString);
const movieId = urlParams.get("id");
const seriesId = urlParams.get("series");
const actorId = urlParams.get("actorId");

const BASE_URL = "https://api.themoviedb.org/3";
const image_url = "https://image.tmdb.org/t/p/original/";
const API_KEY = "a527eb9bc54324ce4f762ac2b6d36ae6";

const requestActor = `/movie/${movieId}/credits`;
const requestActorTv = `/tv/${seriesId}/credits`;
const requestActorDetails = `/person/${actorId}`;

const main_movie = document.querySelector(".main_movie");
const movie_item = document.querySelector(".movie_item");
const info_film = document.querySelectorAll("info_film");

fetch(`${BASE_URL}${requestActor}?api_key=${API_KEY}`) // All Actors Movies
  .then((response) => response.json())
  .then((data) => {
    data.cast.map((_actor) => {
      if (_actor.profile_path != null && _actor.profile_path != "") {
        main_movie.innerHTML += `<div class="movie_item"><a href="actor?actorId=${_actor.id}"><img src="${image_url}${_actor.profile_path}" alt=""></a><div class="info_film"><h3>${_actor.name}</h3></div><div class="overlay-film_scroll"></div></div>`;
      }
    });
  });
fetch(`${BASE_URL}${requestActorTv}?api_key=${API_KEY}`) // All Actors TV Shows
  .then((response) => response.json())
  .then((data) => {
    data.cast.map((_actor) => {
      if (_actor.profile_path != null && _actor.profile_path != "") {
        main_movie.innerHTML += `<div class="movie_item"><a href="actor?actorId=${_actor.id}"><img src="${image_url}${_actor.profile_path}" alt=""></a><div class="info_film"><h3>${_actor.name}</h3></div><div class="overlay-film_scroll"></div></div>`;
      }
    });
  });


const actorDetailImage = document.getElementById("actorDetailImage")
const actorDetailNamePhone = document.getElementById("actorDetailNamePhone")
const actorDetailNameDesktop = document.getElementById("actorDetailNameDesktop")
const actorDetailBio = document.getElementById("actorDetailBio")
const actorDetailKnownFor = document.getElementById("actorDetailKnownFor")
const actorDetailBirthday = document.getElementById("actorDetailBirthday")
const actorDetailBirth = document.getElementById("actorDetailBirth")
const actorDetailKnownAs = document.getElementById("actorDetailKnownAs")
  
fetch(`${BASE_URL}${requestActorDetails}?api_key=${API_KEY}`) // Actors Details
  .then((response) => response.json())
  .then((data) => {
    console.log(data)
    actorDetailImage.outerHTML = `<img src="${image_url}${data.profile_path}" id="actorDetailImage">`
    actorDetailNamePhone.outerHTML = `<h2 class="actor_name phone_actor_name" id="actorDetailName">${data.name}</h2>`
    actorDetailNameDesktop.outerHTML = `<h2 class="actor_name desktop_actor_name" id="actorDetailName">${data.name}</h2>`
    actorDetailBio.outerHTML = `<p id="actorDetailNameBio">${data.biography}</p>`
    actorDetailKnownFor.outerHTML = `<span id="actorDetailNameKnownFor">${data.known_for_department}</span>`
    actorDetailBirthday.outerHTML = `<span id="actorDetailBirthday">${data.birthday}</span>`
    actorDetailBirth.outerHTML = `<span id="actorDetailNameBirth">${data.place_of_birth}</span>`
    actorDetailKnownAs.outerHTML = `<span id="actorDetailKnownAs">${data.also_known_as[0]}</span>`
  });

