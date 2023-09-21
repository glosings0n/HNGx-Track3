import 'package:flutter/material.dart';

// The avatar widget
class AvatarComponent extends StatelessWidget {
  final ImageProvider<Object> image;
  final double width;
  final double height;
  const AvatarComponent(
      {super.key,
      required this.image,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
