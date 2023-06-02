import 'package:flutter/material.dart';
import 'package:rentalhub/Constants/Color.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final Color hintTextColor;
  final Color textFieldBackgroundColor;
  final TextEditingController controller;

  CustomTextField({
    required this.hintText,
    required this.hintTextColor,
    required this.textFieldBackgroundColor,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: textFieldBackgroundColor,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            color: hintTextColor,
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
