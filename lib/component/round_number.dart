import 'package:flutter/material.dart';

class RoundNumber extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const RoundNumber({super.key, required this.text, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23, // Set width & height to make it a circle
      height: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1.5, color: Colors.black),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:
            textStyle ??
            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
