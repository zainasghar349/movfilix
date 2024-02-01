import 'package:flutter/material.dart' show IconData, immutable;

@immutable
class VideoSettingsModel {
  final IconData icon;
  final String title;
  final List<dynamic> items;
  final List<dynamic> ontaps;

  const VideoSettingsModel( {
    required this.icon,
    required this.title,
    required this.items,
    required this.ontaps,
  });
}
