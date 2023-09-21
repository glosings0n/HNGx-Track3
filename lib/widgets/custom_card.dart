import 'package:flutter/material.dart';
import 'package:free_lunch_app/utils/colors.dart';

class CustomCard extends StatelessWidget {
  final String cardText;
  final Widget icon;
  final double? iconWidth;
  final double? iconHeight;
  const CustomCard(
      {super.key,
      required this.cardText,
      required this.icon,
      this.iconWidth,
      this.iconHeight});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.tGray.withOpacity(.5),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          children: <Widget>[
            Text(
              cardText,
              style: TextStyle(
                color: AppColors.tBlack,
                fontSize: width * .01 + 16,
              ),
            ),
            SizedBox(width: width * .01),
            SizedBox(
              width: iconWidth ?? 18,
              height: iconWidth ?? 18,
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
