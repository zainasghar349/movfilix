import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_colors.dart';

class AnimatedMovieCard extends StatelessWidget {
  final double index;
  final String url;
  const AnimatedMovieCard({
    Key?key,
    required this.index,
    required this.url,
  }
  ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        AnimatedContainer(
          clipBehavior: Clip.antiAlias,
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.skew(index, -index),
          transformAlignment: Alignment.topCenter,
          height: 240,
          width: 170,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: CacheImage(url: url),
        ),
        AnimatedContainer(
          clipBehavior: Clip.antiAlias,
          duration: const Duration(milliseconds: 200),
          transform: Matrix4.skew(index, -index),
          transformAlignment: Alignment.topCenter,
          height: 240,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(index == 0 ? 0.0 : 0.6),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }
}
