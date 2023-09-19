import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/svg_icons.dart';



// This files contains differents total cards
class TotalCardOne extends StatelessWidget {
  final String totalNum;
  final double width;
  final double height;
  const TotalCardOne(
      {super.key,
      required this.totalNum,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.tGray,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have',
            style: TextStyle(
              color: AppColors.tBlack,
              fontSize: width * .01 + 14,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: AppSvgIcons.hamburgerPrimary,
              ),
              Text(
                totalNum,
                style: TextStyle(
                    color: AppColors.tPrimaryColor,
                    fontSize: width * .03 + 62,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          Text(
            'Free Lunches',
            style: TextStyle(
              color: AppColors.tBlack,
              fontSize: width * .01 + 14,
            ),
          ),
        ],
      ),
    );
  }
}

class TotalCardTwo extends StatelessWidget {
  final String totalNum;
  final double width;
  final double height;
  const TotalCardTwo(
      {super.key,
      required this.totalNum,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.tPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Available Lunches',
            style: TextStyle(
              color: AppColors.tGray,
              fontSize: width * .01 + 14,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                totalNum,
                style: TextStyle(
                  color: AppColors.tGray,
                  fontSize: width * .03 + 52,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: width * .02),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: AppSvgIcons.hamburgerLightTotal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TotalCardThree extends StatelessWidget {
  final String totalNum;
  final double width;
  final double height;
  const TotalCardThree(
      {super.key,
      required this.totalNum,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: AppColors.tPrimaryColor.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.tPrimaryColor, width: 1.2)),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'You\'ve done well this month, Cheers 🥂',
            style: TextStyle(
              color: AppColors.tPrimaryColor,
              fontSize: width * .01 + 14,
            ),
          ),
          SizedBox(height: height * .02),
          FittedBox(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.tWhite,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: AppColors.tWhite,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    margin: const EdgeInsets.only(bottom: 10),
                    child: AppSvgIcons.hamburgerPrimary2,
                  ),
                  SizedBox(width: width * .02),
                  Text(
                    totalNum,
                    style: TextStyle(
                      color: AppColors.tAmberAccent,
                      fontSize: width * .02 + 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),  
                ],
              ),
            ),
          ),
          SizedBox(height: height * .02),
          Text(
            'Free Lunches',
            style: TextStyle(
              color: AppColors.tPrimaryColor,
              fontSize: width * .01 + 14,
            ),
          ),
        ],
      ),
    );
  }
}
