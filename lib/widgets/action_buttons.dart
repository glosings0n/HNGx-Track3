import 'package:flutter/material.dart';

import '../utils/colors.dart';

class MiniActionBtn extends StatelessWidget {
  final Color? btnColor;
  final Widget? icon;
  final String text;
  const MiniActionBtn(
      {super.key, this.btnColor, this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: btnColor ?? AppColors.tPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: <Widget>[
            icon ?? const SizedBox(),
            SizedBox(width: width * .02),
            Text(
              text,
              style: TextStyle(
                color: AppColors.tWhite,
                fontSize: width * .01 + 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediumActionBtn extends StatelessWidget {
  final Color? btnColor;
  final Widget? icon;
  final String text;
  const MediumActionBtn(
      {super.key, this.btnColor, this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: btnColor ?? AppColors.tPrimaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: <Widget>[
            icon ?? const SizedBox(),
            SizedBox(width: width * .02),
            Text(
              text,
              style: TextStyle(
                color: AppColors.tWhite,
                fontSize: width * .01 + 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionBtn extends StatelessWidget {
  final Color? btnColor;
  final Widget? icon;
  final String text;
  final double? widthM;
  const ActionBtn(
      {super.key, this.btnColor, this.icon, required this.text, this.widthM});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: widthM,
      constraints: BoxConstraints(minWidth: width * .5),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: btnColor ?? AppColors.tPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon ?? const SizedBox(),
          SizedBox(width: width * .02),
          Text(
            text,
            style: TextStyle(
              color: AppColors.tWhite,
              fontSize: width * .01 + 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class MiniOutlinedActionBtn extends StatelessWidget {
  final Color? btnColor;
  final Color? textColor;
  final Widget? icon;
  final String text;
  const MiniOutlinedActionBtn(
      {super.key, this.btnColor, this.icon, required this.text, this.textColor});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(color: btnColor ?? AppColors.tPrimaryColor, ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: <Widget>[
            icon ?? const SizedBox(),
            SizedBox(width: width * .02),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: width * .01 + 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}