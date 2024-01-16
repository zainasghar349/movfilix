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

    final appBars = {
      1: {
        'title': "Library",
        'actions': <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          )
        ],
      },
      2: {'title': "Downlods"},
      3: {'title': "Profile & Settings"},
    };

    return Obx(() {
      final curIndex = navController.index;
      return PopScope(
        canPop: curIndex == 0,
        onPopInvoked: (didPop) {
          if (curIndex != 0) {
            navController.changePage(0);
          }
        },
        child: Scaffold(
          appBar: appBars[curIndex] != null
              ? AppBar(
                  title: Text(appBars[curIndex]!['title']! as String),
                  actions: appBars[curIndex]!['actions'] as List<Widget>?,
                )
              : null,
          body: screens[curIndex],
          bottomNavigationBar: const NavigatorBar(),
        ),
      );
    });
  }
}
