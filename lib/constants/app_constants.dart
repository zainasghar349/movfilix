import 'package:movfilix/models/movie_model.dart';

class AppConstants {
  static const appname = "MovFlix";

  static final movies = <MovieModel>[
    const MovieModel(
      title: "Strange Things",
      genre: "Thriller",
      url:
          "https://m.media-amazon.com/images/M/MV5BMDRjYWI5NTMtZTYzZC00NTg4LWI3NjMtNmI3MTdhMWQ5MGJlXkEyXkFqcGdeQXVyNTg4MDc4Mg@@._V1_FMjpg_UX1000_.jpg",
    ),
    const MovieModel(
      title: "Hidden Strike",
      genre: "Action",
      url:
          "https://jeddjong.files.wordpress.com/2023/07/hidden-strike-poster.jpg?w=348",
    ),
    const MovieModel(
      title: "Fast & Furious",
      genre: "Action",
      url:
          "https://resizing.flixster.com/monh65akKmLiePS03HF3m3BZwrk=/300x300/v2/https://resizing.flixster.com/8ZFc4VKwZN8NGV3ZqhCIFCHekxM=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJlNDAyYWUzLWEwZTUtNDVlNy04MDliLTRmZWIzNDMzMzJmYS5qcGc=",
    ),
    const MovieModel(
      title: "Avengers",
      genre: "Action",
      url:
          "https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg",
    ),
    const MovieModel(
      title: "Extraction 2",
      genre: "Action",
      url:
          "https://upload.wikimedia.org/wikipedia/en/0/02/Extraction_2_poster.jpg",
    ),
    const MovieModel(
      title: "Jawaan",
      genre: "Action",
      url:
          "https://www.bollywoodhungama.com/wp-content/uploads/2023/08/Shah-Rukh-Khan-Vijay-Sethupathi-and-Nayanthara-take-center-stage-in-fiery-new-poster-of-Jawan.jpg",
    ),
  ];
}
