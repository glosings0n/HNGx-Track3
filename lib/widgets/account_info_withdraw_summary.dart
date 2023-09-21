import 'package:flutter/material.dart';

import '../utils/colors.dart';

// This is the withdrawal summary widget
class WithdrawSummary extends StatelessWidget {
  final String totalLunch;
  final String worth;
  final double width;
  final double height;
  const WithdrawSummary(
      {super.key,
      required this.totalLunch,
      required this.worth,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.tGray.withOpacity(.5),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Withdrawal Summary',
            style: TextStyle(
              color: AppColors.tBlack.withOpacity(.4),
              fontSize: width * .01 + 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: height * .02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total lunch',
                style: TextStyle(
                  color: AppColors.tBlack.withOpacity(.4),
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                totalLunch,
                style: TextStyle(
                  color: AppColors.tBlack,
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: height * .02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Worth',
                style: TextStyle(
                  color: AppColors.tBlack.withOpacity(.4),
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                worth,
                style: TextStyle(
                  color: AppColors.tBlack,
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Account Info Widget
class AccountInfo extends StatelessWidget {
  final String bankName;
  final String accountName;
  final String accountNumber;
  final double height;
  final double width;
  const AccountInfo(
      {super.key,
      required this.width,
      required this.height,
      required this.bankName,
      required this.accountName,
      required this.accountNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.tGray.withOpacity(.5),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.2,
                    color: AppColors.tBlack,
                  ),
                ),
                padding: const EdgeInsets.all(2),
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: AppColors.tPrimaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(width: width * .01),
              Text(
                'Bank transfer',
                style: TextStyle(
                  color: AppColors.tBlack,
                  fontSize: width * .01 + 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: height * .02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Bank name',
                style: TextStyle(
                  color: AppColors.tBlack.withOpacity(.4),
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                bankName,
                style: TextStyle(
                  color: AppColors.tBlack,
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: height * .02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Account name',
                style: TextStyle(
                  color: AppColors.tBlack.withOpacity(.4),
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                accountName,
                style: TextStyle(
                  color: AppColors.tBlack,
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: height * .02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Account number',
                style: TextStyle(
                  color: AppColors.tBlack.withOpacity(.4),
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                accountNumber,
                style: TextStyle(
                  color: AppColors.tBlack,
                  fontSize: width * .01 + 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
