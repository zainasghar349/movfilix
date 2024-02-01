import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/models/video_settings_model.dart';
import 'package:movfilix/screens/video_player/setting_card.dart';

class BottomSheetComponent extends StatelessWidget {
  final String title;
  final List<VideoSettingsModel> list;
  final Function(VideoSettingsModel setting) onActive;
  const BottomSheetComponent({
    Key?key,
    required this.title,
    required this.list,
    required this.onActive,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(
                title,
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
          const SizedBox(height: 10),
          Column(
            children: List.generate(list.length, (index) {
              final setting = list[index];
              return ListTile(
                contentPadding: const EdgeInsets.all(0),
                onTap: () => onActive(setting),
                leading: Icon(setting.icon),
                title: Text(setting.title),
                
              );
            }),
          ),
        ],
      ),
    );
  }
}
