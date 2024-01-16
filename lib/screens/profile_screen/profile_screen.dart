import 'package:movfilix/common_widgets/cache_image.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/screens/profile_screen/widgets/account.dart';
import 'package:movfilix/screens/profile_screen/widgets/help.dart';
import 'package:movfilix/screens/profile_screen/widgets/notification.dart';
import 'package:movfilix/screens/profile_screen/widgets/sign_out.dart';
import 'package:movfilix/screens/profile_screen/widgets/watch_later_sec.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  void onChanged() {}

  @override
  Widget build(BuildContext context) {
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
        const Padding(
          padding: EdgeInsets.only(left: 13, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Text(
                  "Setting",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffD1CECE)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Notificationsection(),
              SizedBox(
                height: 10,
              ),
              WatchLaterSection(),
              SizedBox(
                height: 10,
              ),
              AccountSection(),
              SizedBox(
                height: 10,
              ),
              HelpSection(),
              SizedBox(
                height: 20,
              ),
              SignOut(),
            ],
          ),
        )
      ],
    );
  }
}
