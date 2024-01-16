import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/switch_controller.dart';

class Notificationsection extends StatelessWidget {
  const Notificationsection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SwitchContorller());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:20,left: 20),
          child: Row(
            children: [
              const Icon(
                Icons.notifications_outlined,
                size: 21,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Notification",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const Spacer(),
              Obx(
                () => Switch(
                  value: controller.index.value,
                  onChanged: (value) {
                    controller.index.value = value;
                  },
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
         Divider(height: 20,color: Colors.white.withOpacity(0.2),)
      ],
    );
  }
}
