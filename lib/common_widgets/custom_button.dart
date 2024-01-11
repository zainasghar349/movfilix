import 'package:flutter/material.dart';
import 'package:movfilix/constants/app_colors.dart';
import 'package:movfilix/screens/main%20_screee/main_screen.dart';

class CustomButton extends StatelessWidget {
  final String name;
  const CustomButton({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MainScreen(),
          )),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        fixedSize: const Size.fromWidth(162),
      ),
      child: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
