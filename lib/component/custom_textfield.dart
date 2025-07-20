import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/text__style.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final bool? obsecureText;
  final TextCapitalization? textCapitalization;
  final double? verticalpadding;
  final double? horizontalpadding;
  final String labelText;
  const CustomTextfield({
    super.key,
    required this.textEditingController,
    this.textInputType,
    this.validator,
    this.textInputAction,
    this.obsecureText,
    this.textCapitalization,
    this.verticalpadding,
    this.horizontalpadding,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalpadding ?? 0,
        horizontal: horizontalpadding ?? 0,
      ),
      child: TextFormField(
        controller: textEditingController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: textInputType,
        validator: validator,
        textInputAction: textInputAction,
        obscureText: obsecureText ?? false,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        style: companyNameInputText(),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
          labelStyle: companyName(),
        ),
      ),
    );
  }
}
