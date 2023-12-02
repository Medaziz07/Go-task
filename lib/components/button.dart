// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.text,
      required this.onTap,
      required this.buttonColor,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight,
      this.borderColor,
      required this.height,
      required this.width});
  String text;
  VoidCallback? onTap;
  Color buttonColor;
  Color textColor;
  double fontSize;
  final FontWeight? fontWeight;
  Color? borderColor;
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.white)),
        width: width,
        height: height,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
