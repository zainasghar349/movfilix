import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/constants/app_assets.dart';
import 'package:movfilix/constants/app_colors.dart';

class BackgroundScreen extends StatelessWidget {
  final Widget child;
  final String bgpath;
  final bool isBackArrow;

  const BackgroundScreen({
    Key? key,
    required this.child,
    this.bgpath = "",
    this.isBackArrow = false,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: <Widget>[
        bgpath == ""
            ? Image.asset(
                AppAssets.bgPng,
                height: size.height * 0.7,
                fit: BoxFit.fill,
              )
            : SizedBox(
                height: size.height * 0.7,
                child: CacheImage(
                  url: bgpath,
                  fit: BoxFit.fill,
                ),
              ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                if (bgpath != '') Colors.transparent,
                AppColors.secondary.withOpacity(0.4),
                if (bgpath != '') AppColors.secondary.withOpacity(0.6),
                AppColors.secondary,
                AppColors.secondary,
              ],
            ),
          ),
          child: SafeArea(child: child),
        ),
        if (isBackArrow)
          Positioned(
            top: 20,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
            ),
          )
      ],
    );
  }
}
