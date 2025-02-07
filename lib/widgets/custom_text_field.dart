import 'package:flutter/material.dart';
import 'package:note_app/constains.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildMethod(),
        enabledBorder: buildMethod(),
        focusedBorder: buildMethod(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildMethod([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
