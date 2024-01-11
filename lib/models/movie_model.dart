import 'package:flutter/material.dart' show immutable;

@immutable
class MovieModel {
  final String title;
  final String genre;
  final String url;
  final bool isactivte=false;

  const MovieModel({
    required this.title,
    required this.genre,
    required this.url,
  });
}
