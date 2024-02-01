import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/bottomsheet_controller.dart';
import 'package:movfilix/models/video_settings_model.dart';
import 'package:movfilix/screens/video_player/setting_card.dart';
import 'package:subtitle_wrapper_package/subtitle_controller.dart';
import 'package:video_player/video_player.dart';

@immutable
class SettingList extends StatefulWidget {
  final VideoSettingsModel setting;
  final VideoPlayerController controller;
  final SubtitleController subtitleController;

  const SettingList({
    Key? key,
    required this.setting,
    required this.controller,
    required this.subtitleController,
  }) : super(key: key);

  @override
  State<SettingList> createState() => _SettingListState();
}

class _SettingListState extends State<SettingList> {
  final setttingsController = Get.put(BottomSheetController());
  

  late final isSubtitle = widget.setting.title == "Subtitles";
  late final isSpeed = widget.setting.title == "Speed";

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                widget.setting.title,
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
          if (widget.setting.items.isNotEmpty)
            Flexible(
              child: SingleChildScrollView(
                child: Obx(
                  () => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      widget.setting.items.length,
                      (index) {
                        return ListTile(
                          onTap: () {
                            if (isSubtitle) {
                              setttingsController
                                  .setSubtitle(widget.setting.ontaps[index]);
                              widget.subtitleController.showSubtitles;
                            }
                            if (isSpeed) {
                              widget.controller.setPlaybackSpeed(
                                  widget.setting.ontaps[index]);
                              setttingsController.setSpeedIndex(index);
                            }

                            Get.back();
                          },
                          title: Text(
                            widget.setting.items[index].toString(),
                            style: TextStyle(
                              color: getColor(index),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Color getColor(int index) {
    Color color = AppColors.primary;
    if (isSpeed) {
      color = setttingsController.speedIndex == index
          ? AppColors.primary
          : Colors.white;
    }

    if (isSubtitle) {
      color = setttingsController.subtitle == index
          ? AppColors.primary
          : Colors.white;
    }
    return color;
  }
}
