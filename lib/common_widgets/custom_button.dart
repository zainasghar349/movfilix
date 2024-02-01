import 'package:flutter/material.dart';
import 'package:movfilix/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final Function() ontap;
  final double size;
  final Color color;
  const CustomButton({Key?key, required this.name, required this.ontap, this.size=162, this.color=AppColors.primary}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        
        backgroundColor:color ,
        fixedSize: Size.fromWidth(size),
      ),
      child: Text(
        name,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
