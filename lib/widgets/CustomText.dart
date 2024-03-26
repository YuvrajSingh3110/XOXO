import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final List<Shadow> shadow;
  final String text;
  final double fontSize;
  const CustomText(
      {super.key,
      required this.shadow,
      required this.text,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          color: Color(0xffA0DDFF),
          shadows: shadow),
    );
  }
}
