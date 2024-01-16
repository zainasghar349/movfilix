import 'package:flutter/material.dart' show IconData, immutable;

@immutable
class NavBtnModel {
  final String title;
  final IconData icon;
  final IconData active;

  const NavBtnModel({
    required this.title,
    required this.icon,
    required this.active,
  });
}
