import 'package:movfilix/constants/exports.dart';

class EpisodesController extends GetxController{
  final currentIndex=0.obs;
  int get index => currentIndex.value;
  void setIndex(int value) {
    if (index == value) return;
    currentIndex.value = value;
  }
}

