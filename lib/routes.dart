import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/navigation.controller.dart';
import 'package:movfilix/screens/detail_screen/download_screen.dart';
import 'package:movfilix/screens/library/library_screen.dart';
import 'package:movfilix/screens/main%20_screen/home_screen.dart';
import 'package:movfilix/screens/main%20_screen/widgets/navigate_bar.dart';
import 'package:movfilix/screens/profile_screen/profile_screen.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());
    const screens = [
      HomeScreen(),
      LibraryScreen(),
      DownloadScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Obx(() => screens[navController.index]),
      bottomNavigationBar: const NavigatorBar(),
    );
  }
}
