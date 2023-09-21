import 'package:flutter/material.dart';
import 'package:free_lunch_app/utils/colors.dart';
import 'package:free_lunch_app/utils/svg_icons.dart';
import 'package:google_fonts/google_fonts.dart';

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
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 6,
          horizontal: 16,
        ),
        width: 59,
        height: 33,
        child: Row(
          children: <Widget>[
            Text(
              cardText,
              style: GoogleFonts.workSans(
                color: AppColors.tBlack,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 3),
            SizedBox(
              width: iconWidth ?? 12,
              height: iconWidth ?? 12,
              child: AppSvgIcons.hamburgerDarkBold,
            ),
          ],
        ),
      ),
    );
  }
}
