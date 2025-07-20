import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/text__style.dart';

class MyCheckbox extends StatelessWidget {
  final bool ischecked;
  final void Function(bool?) onChanged;
  final OutlinedBorder? checkboxShape;
  final Color? activeColor;
  final Color? checkColor;
  final ListTileControlAffinity? controlAffinity;
  final EdgeInsetsGeometry? contentPadding;
  final String title;
  final double? dx;
  final double? dy;
  final double? checkboxdx;
  final double? checkboxdy;
  final bool? dense;
  final TextStyle? textStyle;

  const MyCheckbox({
    super.key,
    required this.ischecked,
    required this.onChanged,
    this.checkboxShape,
    this.activeColor,
    this.checkColor,
    this.controlAffinity,
    this.contentPadding,
    required this.title,
    this.dx,
    this.dy,
    this.checkboxdx,
    this.checkboxdy,
    this.dense,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Transform.translate(
        offset: Offset(checkboxdx ?? 0, checkboxdy ?? 0),
        filterQuality: FilterQuality.high,
        child: CheckboxListTile.adaptive(
          dense: dense ?? false,
          checkboxShape:
              checkboxShape ??
              ContinuousRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(7),
                side: BorderSide(width: 1),
              ),
          value: ischecked,
          onChanged: onChanged,
          activeColor: activeColor,
          checkColor: checkColor,
          controlAffinity: controlAffinity,
          contentPadding: contentPadding,
          title: Transform.translate(
            offset: Offset(dx ?? 0, dy ?? 0),
            child: Text(title, style: textStyle ?? saveContact()),
          ),
        ),
      ),
    );
  }
}
