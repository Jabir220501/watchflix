$("#leftside-navigation .sub-menu > a").click(function (e) {
  $("#leftside-navigation ul ul").slideUp(),
    $(this).next().is(":visible") || $(this).next().slideDown(),
    e.stopPropagation();
});

let navLinks = document.querySelectorAll(
  ".sidebar #leftside-navigation ul li a"
);

for (let i = 0; i < navLinks.length; i++) {
  navLinks[i].addEventListener("click", function () {
    for (var i = 0; i < navLinks.length; i++) {
      navLinks[i].classList.remove("active");
    }
    this.classList.add("active");
  });
}

// Fetch Fields
const fetchButton = document.getElementById("fetch_button");
const fetchInput = document.getElementById("fetch_input");

// Form Fields Movies
const movieName = document.getElementById("movie__name_input");
const movieDesc = document.getElementById("movie_description");
const movieID = document.getElementById("movie_id");
const imdb_movieID = document.getElementById("imdb_movie_id");
const movieGenre = document.getElementById("movie_genre");
const movieActorId = document.getElementById("movie_actor_id");
const movieDirectorId = document.getElementById("movie_director_id");
const movieRating = document.getElementById("movie_rating");
const movieBackdrop = document.getElementById("movie_backdrop");
const moviePoster = document.getElementById("movie_poster");
const TrailerURL = document.getElementById("movie_trailer");
const VideoFile = document.getElementById("movie_video");

// Series Form
const seriesForm = document.getElementById("series_form");

// Fetch Fields
const fetchButtonSeries = document.querySelector(".series_fetch_button");
const fetchInputSeries = document.querySelector(".series_fetch_input");

// Form Fields Series
const seriesName = document.getElementById("series__name_input");
const seriesDesc = document.getElementById("series_description");
const seriesID = document.getElementById("series_id");
const seriesGenre = document.getElementById("series_genre");
const seriesActorId = document.getElementById("series_actor_id");
const seriesDirectorId = document.getElementById("series_director_id");
const seriesRating = document.getElementById("series_rating");
const seriesBackdrop = document.getElementById("series_backdrop");
const seriesPoster = document.getElementById("series_poster");

// API Endpoints
const base_url = "https://api.themoviedb.org/3";
const base_urlOMDb = "https://www.omdbapi.com/";
const image_url = "https://www.omdbapi.com/";
const apiKey = "?api_key=a527eb9bc54324ce4f762ac2b6d36ae6";
const apiKeyOMDb = "&apikey=19fd28ae";
const getMovies = "/movie/";
const getSearch = "&query=";
const getTrailer = "/videos";
const getCredits = "/credits/";
const getTv = "/tv/";
const getMoviesOMDb = "?i=";

// Movies
fetchButton.addEventListener("click", () => {
  const movieDetails = fetchInput.value;
  if (fetchInput != "") {
    fetch(`${base_url}${getMovies}${movieDetails}${apiKey}`).then((response) =>
      response.json().then((data) => {
        if (data.original_title != undefined) {
          console.log(data);
          movieName.value = data.original_title;
          movieDesc.value = data.overview;
          movieID.value = data.id;
          imdb_movieID.value = data.imdb_id;
          movieGenre.value = "";
          for (let i = 0; i < data.genres.length; i++) {
            movieGenre.value += data.genres[i].name + ", ";
          }
          movieBackdrop.value = data.backdrop_path;
          moviePoster.value = data.poster_path;

          // OMDb API
          fetch(
            `${base_urlOMDb}${getMoviesOMDb}${data.imdb_id}${apiKeyOMDb}`
          ).then((response) =>
            response.json().then((json) => {
              movieRating.value = json.imdbRating;
            })
          );

          // Trailer
          fetch(
            `${base_url}${getMovies}${movieDetails}${getTrailer}${apiKey}`
          ).then((response) =>
            response.json().then((trailer) => {
              const _trailer = trailer.results[0].key;
              TrailerURL.value = `https://www.youtube.com/watch?v=${_trailer};`;
            })
          );
        } else {
          alert("Fill in a valid TMDb Movie ID");
        }
      })
    );
  }
});

// Series
fetchButtonSeries.addEventListener("click", () => {
  const SeriesDetails = fetchInputSeries.value;
  if (fetchInputSeries != "") {
    fetch(`${base_url}${getTv}${SeriesDetails}${apiKey}`).then((response) =>
      response.json().then((shows) => {
        console.log(shows);
        if (shows.name != undefined) {
          seriesName.value = shows.name;
          seriesDesc.value = shows.overview;
          seriesID.value = shows.id;
          seriesRating.value = Math.round(shows.vote_average* 10) / 10
          seriesGenre.value = "";
          for (let i = 0; i < shows.genres.length; i++) {
            seriesGenre.value += shows.genres[i].name + ", ";
          }
          seriesBackdrop.value = shows.backdrop_path;
          seriesPoster.value = shows.poster_path;
        } else {
          alert("Fill in a valid TMDb Movie ID");
        }
      })
    );
  }
});
