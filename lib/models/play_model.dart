import 'package:flutter/material.dart' show immutable;
@immutable
class PlayModel{
  final String url;
  final String title;
  final String duration;

  const PlayModel({required this.url, required this.title, required this.duration});
}