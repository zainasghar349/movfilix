import 'package:get/get.dart';

class MovieController extends GetxController {
  final currentIndex = 0.obs;
  final rotate = 0.0;

  int get index => currentIndex.value;

  double getRotate(int ind, int totalLength) {
    int prevIndex = ((index - 1) % totalLength).toInt();
    int nextIndex = ((index + 1) % totalLength).toInt();

    if (index == ind) {
      return 0.0;
    } else if (prevIndex > ind) {
      return 3;
    } else if (nextIndex < index) {
      return -3;
    } else if (prevIndex < ind) {
      return 3;
    } else if (nextIndex > index) {
      return -3;
    } else if (index > ind) {
      return -3;
    } else {
      return 3;
    }
  }

  void setIndex(int value) {
    if (index == value) return;
    currentIndex.value = value;
  }
}
