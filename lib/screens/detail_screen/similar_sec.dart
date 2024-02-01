import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_constants.dart';

class SimilarSection extends StatelessWidget {
  const SimilarSection({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "More Like this",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
              children: List.generate(
            AppConstants.movies.length,
            (index) => Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(right: 20),
              height: 170,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(15),
              ),
              child: CacheImage(url: AppConstants.movies[index].url),
            ),
          )),
        )
      ],
    );
  }
}
