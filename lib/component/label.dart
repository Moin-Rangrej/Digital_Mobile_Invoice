import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  const Label({super.key, required this.text, this.textStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style:
          textStyle ??
          TextStyle(
            fontFamily: "GTWalsheimPro",
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
    );
  }
}
