import 'package:flutter/material.dart';

class DrawerTextButtons extends StatelessWidget {
  final String title;
  final double size;
  final double padding;
  final Function() ontap;
  const DrawerTextButtons({
    Key?key,
    required this.title,
    this.size = 14,
    this.padding = 18,
    required this.ontap,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: padding),
        child: TextButton(
          onPressed: ontap,
          child: Text(
            title,
            style: TextStyle(
              fontSize: size,
              color: const Color(0xffFFFFFF),
            ),
          ),
        ));
  }
}
