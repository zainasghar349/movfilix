import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final Widget child;
  const SettingsCard({Key?key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Color(0xff2B2746),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).width * 0.6,
      ),
      child: child,
    );
  }
}
