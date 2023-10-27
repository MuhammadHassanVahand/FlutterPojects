import 'package:flutter/material.dart';

class AppTextW500 extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double? fontSize;
  const AppTextW500(
      {super.key,
      required this.text,
      required this.color,
      this.fontWeight = FontWeight.w500,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}

class AppTextW400 extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double? fontSize;
  const AppTextW400(
      {super.key,
      required this.text,
      required this.color,
      this.fontWeight = FontWeight.w400,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
