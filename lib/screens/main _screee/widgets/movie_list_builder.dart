import 'package:flutter/cupertino.dart' show CupertinoPageRoute;
import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_colors.dart';
import 'package:movfilix/models/movie_model.dart';
import 'package:movfilix/screens/play_screen/play_screen.dart';

class MoviesListBuilder extends StatelessWidget {
  final List<MovieModel> movies;
  final String title;
  final Function()? onTap;
  const MoviesListBuilder({
    super.key,
    required this.movies,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: onTap,
              child: const Text("See all"),
            ),
          ],
        ),
        Container(
          clipBehavior: Clip.antiAlias,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFF676571).withOpacity(0.34),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                movies.length,
                (index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => PlayScreen(
                          url: movies[index].url,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 140,
                    width: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CacheImage(url: movies[index].url),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
