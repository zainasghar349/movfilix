import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/controllers/navigation.controller.dart';

class NavigatorBar extends StatelessWidget {
  const NavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navigatorController = Get.put(NavigationController());
    return 
        SizedBox(
        height: 70,
        child: Theme(
          data: ThemeData(
            canvasColor: const Color(0xff676571).withOpacity(0.34),
        
          ),
          child: ClipRRect(
              borderRadius:const BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20) ),
              child: Obx(() =>  BottomNavigationBar(
                  unselectedItemColor: Colors.white,
                  selectedItemColor: AppColors.primary,
                  showUnselectedLabels: true,
                  currentIndex: navigatorController.selectedIndex.value,
                  onTap: (value) {
                    navigatorController.selectedIndex.value = value;
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_outlined), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.library_books), label: "Library"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.download), label: "Download"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: "Profile"),
                  ]),
            ),
          ),
        ),
      
    );
  }
}