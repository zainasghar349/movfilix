import 'package:flutter/material.dart' show Icons;
import 'package:get/get.dart';
import 'package:movfilix/models/video_settings_model.dart';

class BottomSheetController extends GetxController {
  final currentIndex = 0.obs;
  final isSubOn = 0.obs;

  int get speedIndex => currentIndex.value;
  void setSpeedIndex(int newIndex) {
    if (speedIndex != newIndex) {
      currentIndex.value = newIndex;
    }
  }

  int get subtitle => isSubOn.value;
  void setSubtitle(int newVal) {
    if (subtitle != newVal) {
      isSubOn.value = newVal;
    }
  }

  // ! ---------------------------------------------------------
  List<VideoSettingsModel> settings = [
    const VideoSettingsModel(
      icon: Icons.hd,
      title: "Quality",
      items: [
        "Auto",
        "1080P",
        "720P",
        "360P",
      ],
      ontaps: [],
    ),
    const VideoSettingsModel(icon: Icons.speed, title: "Speed", items: [
      "0.5",
      "Normal",
      "1.5",
    ], ontaps: [
      0.5,
      1.0,
      1.5
    ]),
    const VideoSettingsModel(
      icon: Icons.lock,
      title: "Lock",
      items: ["on"],
      ontaps: [1],
    ),
    const VideoSettingsModel(
      icon: Icons.subtitles_outlined,
      title: "Subtitles",
      items: ["Off", "On"],
      ontaps: [0, 1],
    ),
  ];
}
