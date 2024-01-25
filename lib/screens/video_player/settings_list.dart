import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movfilix/models/video_settings_model.dart';
import 'package:movfilix/screens/video_player/setting_card.dart';

class SettingList extends StatelessWidget {
  final VideoSettingsModel setting;
  const SettingList({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                setting.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.close, color: Colors.white),
              ),
            ],
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      setting.items.length,
                      (index) {
                        return ListTile(
                          onTap: () {},
                          title: Text(
                            setting.items[index],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
