import 'package:flutter/material.dart';
import 'package:flutter_demo/component/label.dart';
import 'package:flutter_demo/utils/text__style.dart';

class ContactButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final IconData icon;
  final double? height;
  final double? width;
  const ContactButton({
    super.key,
    required this.text,
    required this.onPress,
    required this.icon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 40,
      width: width ?? 110,
      child: ElevatedButton.icon(
        onPressed: onPress,
        label: Label(text: "Contacts", textStyle: contactStyle()),
        icon: Icon(icon, color: Colors.black),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFF3AA68),
          iconSize: 20,
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
