import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/common_widgets/profile_widgets.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/switch_controller.dart';
import 'package:movfilix/constants/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  void onChanged() {}

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SwitchContorller());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                height: 68,
                width: 82,
                decoration: const BoxDecoration(
                    color: Colors.amber, shape: BoxShape.circle),
                child: const CacheImage(
                    url:
                        "https://m.media-amazon.com/images/M/MV5BMDRjYWI5NTMtZTYzZC00NTg4LWI3NjMtNmI3MTdhMWQ5MGJlXkEyXkFqcGdeQXVyNTg4MDc4Mg@@._V1_FMjpg_UX1000_.jpg"),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: TextfieldComponent(
                  hintText: "Zain Asghar",
                  suffixIcon: Icons.edit,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffD1CECE)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileWidgets(
                icons: Icons.notifications_outlined,
                title: "Notications",
                tralling: Obx(
                  () => Switch(
                    value: controller.index.value,
                    onChanged: (value) {
                      controller.index.value = value;
                    },
                  ),
                ),
              ),
              Divider(
                height: 0.0,
                color: Colors.white.withOpacity(0.2),
              ),
              InkWell(
                onTap: () => Get.toNamed(AppRoutes.watchLaterScreen),
                child: const ProfileWidgets(
                    icons: Icons.add, title: "Watch Later"),
              ),
              Divider(
                height: 0.0,
                color: Colors.white.withOpacity(0.2),
              ),
              InkWell(
                  onTap: () => Get.toNamed(AppRoutes.accountDetailChange),
                        
                      
                  child: const ProfileWidgets(
                      icons: Icons.person, title: "Account")),
              Divider(
                height: 0.0,
                color: Colors.white.withOpacity(0.2),
              ),
              const ProfileWidgets(icons: Icons.help, title: "help"),
              Divider(
                height: 0.0,
                color: Colors.white.withOpacity(0.2),
              ),
              const ProfileWidgets(icons: Icons.logout, title: "Signout"),
              Divider(
                height: 0.0,
                color: Colors.white.withOpacity(0.2),
              ),
            ],
          ),
        )
      ],
    );
  }
}
