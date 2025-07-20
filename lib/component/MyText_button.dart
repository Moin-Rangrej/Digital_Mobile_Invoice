import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/text__style.dart';

class MytextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final TextStyle? textStyle;
  const MytextButton({super.key, required this.title, required this.onPress, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPress, child: Text(title, style: textStyle ?? textBtnStyle()));
  }
}
