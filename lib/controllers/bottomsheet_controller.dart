import 'package:flutter/material.dart' show Icons;
import 'package:get/get.dart';
import 'package:movfilix/models/video_settings_model.dart';

class BottomSheetController extends GetxController {
  final currentIndex = 0.obs;

  int get index => currentIndex.value;
  void setIndex(int newIndex) {
    if (index != newIndex) {
      currentIndex.value = newIndex;
    }
  }

  // ! ---------------------------------------------------------
  List<VideoSettingsModel> settings = const [
    VideoSettingsModel(icon: Icons.hd, title: "Quality", items: [
      "Auto",
      "1080P",
      "720P",
      "360P",
    ]),
    VideoSettingsModel(icon: Icons.speed, title: "Speed", items: [
      "0.5x",
      "Normal",
      "1.5x",
    ]),
    VideoSettingsModel(icon: Icons.lock, title: "Lock", items: []),
    VideoSettingsModel(
      icon: Icons.subtitles_outlined,
      title: "Subtitles",
      items: [],
    ),
  ];
}
