import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: color,
            ))
        : CircleAvatar(
            radius: 40,
            backgroundColor: color,
          );
  }
}
