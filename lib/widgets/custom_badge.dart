import 'package:flutter/material.dart';

class CustomBadgeIcon extends StatelessWidget {
  final Widget icon;
  final Color? filledColor;
  final Color? outlineColor;
  const CustomBadgeIcon(
      {super.key, required this.icon, this.filledColor, this.outlineColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: filledColor,
        borderRadius: BorderRadius.circular(100),
        border: outlineColor != null
            ? Border.all(
                color: outlineColor!,
                width: 1.2,
              )
            : null,
      ),
      child: icon,
    );
  }
}
