import 'package:flutter/material.dart' show immutable;

@immutable
class IntroModel{
  final String duration;
  final String release;
  final String rated;
  final String episodes;
  final String discription;
  final String cast;

  const IntroModel( {required this.duration, required this.release, required this.rated,required this.episodes,required this.discription,required this.cast});
}