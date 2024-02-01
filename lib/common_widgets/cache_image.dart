import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheImage extends StatelessWidget {
  final String url;
  final Widget? placeHolder;
  final Widget? errorWidget;
  final BoxFit fit;
  const CacheImage({
    Key?key,
    required this.url,
    this.placeHolder,
    this.errorWidget,
    this.fit = BoxFit.cover,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fadeInDuration: const Duration(milliseconds: 200),
      fadeOutDuration: const Duration(milliseconds: 200),
      imageUrl: url,
      placeholder: (context, url) =>
          placeHolder ??
          const Center(
            child: CircularProgressIndicator(),
          ),
      errorWidget: (context, url, error) =>
          errorWidget ??
          const Center(
            child: Icon(Icons.error, size: 40),
          ),
      fit: fit,
    );
  }
}
