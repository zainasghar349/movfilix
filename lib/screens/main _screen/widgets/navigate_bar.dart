import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/navigation.controller.dart';
import 'package:movfilix/models/nav_button_model.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navigatorController = Get.put(NavigationController());

    const navBtns = [
      NavBtnModel(
        title: "Home",
        icon: Icons.home_outlined,
        active: Icons.home,
      ),
      NavBtnModel(
        title: "Library",
        icon: Icons.library_books_outlined,
        active: Icons.library_books,
      ),
      NavBtnModel(
        title: "Downloads",
        icon: Icons.download_outlined,
        active: Icons.download,
      ),
      NavBtnModel(
        title: "Profile",
        icon: Icons.person_outline,
        active: Icons.person,
      ),
    ];

    return Container(
      height: 70,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xff676571).withOpacity(0.34),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(navBtns.length, (index) {
            final isActive = index == navigatorController.index;
            final btn = navBtns[index];
            return MaterialButton(
              padding: const EdgeInsets.all(2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              onPressed: () => navigatorController.changePage(index),
              child: Column(
                children: <Widget>[
                  Icon(
                    isActive ? btn.active : btn.icon,
                    color: isActive ? AppColors.primary : Colors.white,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    btn.title,
                    style: TextStyle(
                      color: isActive ? AppColors.primary : Colors.white,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
