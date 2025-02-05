import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            )),
      ),
    );
  }
}
