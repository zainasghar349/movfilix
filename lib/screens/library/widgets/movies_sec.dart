import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_constants.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GridView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: AppConstants.movies.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  mainAxisExtent: 160,
                ),
                itemBuilder: (context, index) {
                  final movie = AppConstants.movies[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: CacheImage(url: movie.url),
                  );
                },
              ),
              Container(
                height: 300,
              ),
          
        ],
      );
    
  }
}