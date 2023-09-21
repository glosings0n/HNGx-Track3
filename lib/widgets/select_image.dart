import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SelectCam extends StatelessWidget {
  final double width;
  final double height;
  final Widget icon;
  const SelectCam({super.key, required this.width, required this.height, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: AppColors.tGray,
      ),
      alignment: Alignment.center,
      child: icon,
    );
  }
}
