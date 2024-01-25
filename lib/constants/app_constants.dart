import 'package:movfilix/models/action_model.dart';
import 'package:movfilix/models/intro_model.dart';
import 'package:movfilix/models/movie_model.dart';
import 'package:movfilix/models/play_model.dart';
import 'package:movfilix/models/verification_model.dart';

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
  static final episodes = <PlayModel>[
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "1. The Energy of Lov",
      duration: "57 MIN",
    ),
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "2. Sex bacho ki pouch se ",
      duration: "57 MIN",
    ),
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "1. The Energy of Lov",
      duration: "57 MIN",
    ),
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "1. The Energy of Lov",
      duration: "57 MIN",
    ),
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "1. The Energy of Lov",
      duration: "57 MIN",
    ),
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "1. The Energy of Lov",
      duration: "57 MIN",
    ),
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "1. The Energy of Lov",
      duration: "57 MIN",
    ),
    const PlayModel(
      url:
          "https://static.displate.com/392x280/displate/2022-09-05/67f549944a390c766fd186979ddb0f97_76ae2aa56db908b08a17c67a7371903a.jpg",
      title: "1. The Energy of Lov",
      duration: "57 MIN",
    ),
  ];
  static final introModelList = <IntroModel>[
    const IntroModel(
        duration: "1H 52MIN",
        release: "2012",
        rated: "13+",
        episodes: "8 Episodes",
        discription:
            "Among the palaces and paris and his gang to stea. ultrices quis and having fun with others it was good experience",
        cast: "")
  ];
  static final verification = [
    VerificationModel(number: "7"),
    VerificationModel(number: "7"),
    VerificationModel(number: "1"),
    VerificationModel(number: "3"),
  ];
  static final actionList = <ActionModel>[
    ActionModel(
        url:
            "https://i.pinimg.com/564x/ad/fe/af/adfeaf885913d9798ee3818ac3bf2f85.jpg"),
    ActionModel(
        url:
            "https://i.pinimg.com/564x/35/2d/c5/352dc5a927214801bde72cfa30eec5a2.jpg"),
    ActionModel(url: "https://www.pinterest.com/pin/518899188319491316/"),
    ActionModel(
        url:
            "https://i.pinimg.com/736x/c0/4a/54/c04a54848540c5c933ed49c2fbe8efe3.jpg"),
    ActionModel(
        url:
            "https://i.pinimg.com/736x/27/3b/78/273b78a62679a2eb56d59d9d0e6e2d46.jpg")
  ];
}
