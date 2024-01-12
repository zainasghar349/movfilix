import 'package:movfilix/constants/exports.dart';

class NavigationController extends GetxController{
  var selectedIndex=0.obs;
  void ontaped(index){
    selectedIndex.value=index;
  }
}