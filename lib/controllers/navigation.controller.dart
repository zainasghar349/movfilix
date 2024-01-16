import 'package:movfilix/constants/exports.dart';

class NavigationController extends GetxController {
  final selectedIndex = 0.obs;

  void changePage(index) {
    selectedIndex.value = index;
  }

  int get index => selectedIndex.value;
}
