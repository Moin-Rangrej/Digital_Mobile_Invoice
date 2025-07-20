import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  final Color? color;
  final double? size;
  final double? weight;
  const CustomIconButton({
    super.key,
    required this.onPress,
    required this.icon,
    this.color,
    this.size,
    this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(), // override default min size of 48px
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap, // the '2023' part
      ),
      onPressed: onPress,
      icon: Icon(icon, color: color, size: size, weight: weight),
    );
  }
}
