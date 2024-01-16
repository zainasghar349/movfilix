import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_colors.dart';
import 'package:movfilix/constants/app_constants.dart';

class WatchLater extends StatelessWidget {
  const WatchLater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secondary,
        appBar: AppBar(
          title: const Text(
            "Watch Later",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          backgroundColor: AppColors.secondary,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tv Shows & Movies",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: List.generate(
                    AppConstants.movies.length,
                    (index) => Card(
                      elevation: 0,
                      surfaceTintColor: Colors.transparent,
                      margin: const EdgeInsets.only(bottom: 20),
                      color: AppColors.secondary,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: 71,
                                width: 127,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: CacheImage(
                                    url: AppConstants.movies[index].url),
                              ),
                              const Positioned(
                                  top: 0,
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Icon(
                                    Icons.play_circle_outline,
                                    size: 38.5,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            AppConstants.movies[index].title,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.delete_forever,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
