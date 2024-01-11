import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movfilix/constants/app_colors.dart';
import 'package:movfilix/constants/app_constants.dart';
import 'package:movfilix/controllers/movie_controller.dart';
import 'package:movfilix/screens/main%20_screee/widgets/animated_movie_card.dart';

class CarouselBuilder extends StatelessWidget {
  const CarouselBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final carouselController = Get.put(MovieController());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Now Playing",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Obx(
          () {
            final cInd = carouselController.index;
            final movies = AppConstants.movies;
            return Column(
              children: <Widget>[
                CarouselSlider(
                  items: List.generate(
                    movies.length,
                    (ind) => AnimatedMovieCard(
                      url: movies[ind].url,
                      index: carouselController.getRotate(ind, movies.length),
                    ),
                  ),
                  options: CarouselOptions(
                    clipBehavior: Clip.none,
                    viewportFraction: 0.55,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.26,
                    onPageChanged: (index, reason) =>
                        carouselController.setIndex(index),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  movies[cInd].title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  movies[cInd].genre,
                  style: TextStyle(
                      fontSize: 13, color: Colors.white.withOpacity(0.5)),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    movies.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == carouselController.index
                            ? AppColors.primary
                            : const Color(0xFFD9D9D9),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
