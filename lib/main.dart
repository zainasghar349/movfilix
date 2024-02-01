import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:movfilix/constants/app_colors.dart';
import 'package:movfilix/constants/app_constants.dart';
import 'package:movfilix/constants/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appname,
      theme: AppColors.themeData,
      initialRoute: AppRoutes.welcomeScreen,
      getPages: AppRoutes.routes,
    );
  }
}
