import 'package:flutter/material.dart';

class TextfieldComponent extends StatelessWidget {
  final String hintText;
  final double borderRadius;
  final IconData? suffixIcon;
  final IconData? preficIcon;
  const TextfieldComponent({
    super.key,
    required this.hintText,
    this.borderRadius = 30,
    this.suffixIcon,
    this.preficIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        contentPadding: const EdgeInsets.only(
          left: 30,
          top: 10,
          bottom: 10,
        ),
        suffixIcon: suffixIcon != null
            ? Padding(
              padding: EdgeInsets.only(right: preficIcon != null ? 0.0 : 8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(suffixIcon),
                ),
            )
            : null,
        prefixIcon: preficIcon != null
            ? IconButton(
                onPressed: () {},
                icon: Icon(preficIcon),
              )
            : null,
      ),
    );
  }
}
