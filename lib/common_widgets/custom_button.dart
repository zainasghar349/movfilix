import 'package:flutter/material.dart';
import 'package:movfilix/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final Function() ontap;
  const CustomButton({super.key, required this.name, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
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
