import 'package:movfilix/common_widgets/drawer_text_button.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/navigation.controller.dart';
import 'package:movfilix/screens/detail_screen/download_screen.dart';
import 'package:movfilix/screens/library/library_screen.dart';
import 'package:movfilix/screens/home%20_screen/home_screen.dart';
import 'package:movfilix/screens/home%20_screen/widgets/navigate_bar.dart';
import 'package:movfilix/screens/profile_screen/profile_screen.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({Key? key,}) : super(key: key);

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
          ),
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
          drawer: curIndex == 0
              ? Drawer(
                  width: 275,
                  backgroundColor: const Color(0xff2B2746).withOpacity(0.9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      DrawerTextButtons(
                        title: "Categories",
                        size: 17,
                        padding: 10,
                        ontap: () {},
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      InkWell(
                          onTap: () {},
                          child: DrawerTextButtons(
                            title: "Tv shows",
                            ontap: () {},
                          )),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      DrawerTextButtons(
                        title: "Movies",
                        ontap: () {},
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      DrawerTextButtons(
                        title: "Fantesy",
                        ontap: () {},
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      DrawerTextButtons(
                        title: "Friction",
                        ontap: () {},
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      DrawerTextButtons(
                        title: "Sci_Fi",
                        ontap: () {},
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      DrawerTextButtons(
                        title: "Documentaries",
                        ontap: () {},
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      DrawerTextButtons(
                        title: "Thrillers",
                        ontap: () {},
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      DrawerTextButtons(
                        title: "Crime",
                        ontap: () {},
                      ),
                      Divider(
                        height: 30,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ],
                  ),
                )
              : null,
        ),
      );
    });
  }
}
