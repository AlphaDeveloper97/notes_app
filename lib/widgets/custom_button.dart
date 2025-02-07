import 'package:flutter/material.dart';
import 'package:note_app/constains.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
