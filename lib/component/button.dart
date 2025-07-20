import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/screens_utils.dart';
import 'package:flutter_demo/utils/text__style.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final TextStyle? style;
  final ButtonStyle? buttonStyle;
  final double? horizontalpadding;
  final double? verticalpadding;
  const Button({
    super.key,
    required this.text,
    required this.onPress,
    this.style,
    this.buttonStyle,
    this.horizontalpadding,
    this.verticalpadding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          buttonStyle ??
          ElevatedButton.styleFrom(
            backgroundColor: AppColors.AppPurple,
            padding: EdgeInsets.symmetric(
              horizontal: horizontalpadding ?? 0,
              vertical: verticalpadding ?? 0,
            ),
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadiusGeometry.all(Radius.circular(25)),
            ),
          ),
      onPressed: onPress,
      child: Text(text, style: style ?? continueBtn()),
    );
  }
}
