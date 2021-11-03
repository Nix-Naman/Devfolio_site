import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textsize;
  final Color color;
  final FontWeight fontWeight;

  const CustomText(
      {Key? key,
      required this.text,
      required this.textsize,
      required this.color,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: textsize,
          fontWeight: fontWeight == null ? FontWeight.w400 : fontWeight),
    );
  }
}
