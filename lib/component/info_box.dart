import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final Widget widget;
  final double? height;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  const InfoBox({
    super.key,
    required this.widget,
    this.height,
    this.color,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      margin: margin,
      width: double.infinity,
      color: color,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: widget,
    );
  }
}
