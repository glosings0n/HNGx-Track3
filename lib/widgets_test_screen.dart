import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'utils/colors.dart';
import 'utils/icons.dart';
import 'utils/svg_icons.dart';
import 'widgets/account_info_withdraw_summary.dart';
import 'widgets/action_buttons.dart';
import 'widgets/avatar.dart';
import 'widgets/custom_badge.dart';
import 'widgets/custom_card.dart';
import 'widgets/select_image.dart';
import 'widgets/total_card.dart';

class WidgetsTestScreen extends StatefulWidget {
  const WidgetsTestScreen({super.key});

  @override
  State<WidgetsTestScreen> createState() => _WidgetsTestScreenState();
}

class _WidgetsTestScreenState extends State<WidgetsTestScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Text('Home Icon'),
              AppSvgIcons.home,
              const Text('Home Active'),
              AppSvgIcons.homeActive,
              const Text('Hambuger'),
              AppSvgIcons.hamburgerDark,
              const Text('Hambuger Primary'),
              AppSvgIcons.hamburgerPrimary,
              SizedBox(height: height * .02),
              AppSvgIcons.hamburgerPrimary2,
              const Text('Hambuger Light'),
              Container(
                color: Colors.black,
                padding: const EdgeInsets.all(10),
                child: AppSvgIcons.hamburgerLight,
              ),
              const Text('Luch Sent'),
              AppSvgIcons.lunchSent,
              const Text('Withdrawal'),
              AppSvgIcons.withdrawal,
              const Text('Lunch Recived'),
              AppSvgIcons.lunchRecieved,
              const Text('Mini Action Button'),
              const Text('Select Cam'),
              SizedBox(height: height * .02),
              const SelectCam(
                height: 56,
                width: 56,
                icon: Icon(
                  CupertinoIcons.camera,
                  color: AppColors.tBlack4,
                ),
              ),
              SizedBox(height: height * .02),
              const Text('Custom Cards'),
              SizedBox(height: height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    cardText: '1',
                    icon: AppSvgIcons.hamburgerDark,
                    iconHeight: 18,
                    iconWidth: 18,
                  ),
                  SizedBox(width: width * .04),
                  CustomCard(cardText: '2', icon: AppSvgIcons.hamburgerDark),
                  SizedBox(width: width * .04),
                  CustomCard(cardText: '3', icon: AppSvgIcons.hamburgerDark),
                  SizedBox(width: width * .04),
                  CustomCard(cardText: '4', icon: AppSvgIcons.hamburgerDark),
                ],
              ),
              SizedBox(height: height * .02),
              const Text('Bage Icons'),
              CustomBadgeIcon(
                icon: const Icon(
                  Icons.check,
                  color: AppColors.tPrimaryColor,
                ),
                filledColor: AppColors.tPrimaryColor.withOpacity(.2),
              ),
              SizedBox(height: height * .02),
              const CustomBadgeIcon(
                icon: Icon(
                  Icons.person_remove_alt_1_outlined,
                  color: AppColors.tPrimaryColor,
                ),
                outlineColor: AppColors.tPrimaryColor,
              ),
              SizedBox(height: height * .02),
              MiniActionBtn(
                text: 'Lunch',
                btnColor: AppColors.tPrimaryColor,
                icon: AppSvgIcons.hamburgerLight,
              ),
              SizedBox(height: height * .02),
              MiniActionBtn(
                text: 'Send Lunch',
                btnColor: AppColors.tPrimaryColor,
                icon: AppSvgIcons.hamburgerLight,
              ),
              SizedBox(height: height * .02),
              const MiniOutlinedActionBtn(
                text: 'Upload image',
                btnColor: AppColors.tPrimaryColor,
                textColor: AppColors.tPrimaryColor,
              ),
              const Text('Action Button 1'),
              ActionBtn(
                text: 'Return Home',
                widthM: width * .8,
                btnColor: AppColors.tPrimaryColor,
              ),
              const Text('Action Button 2'),
              ActionBtn(
                text: 'Send Lunch',
                widthM: width * .8,
                icon: AppSvgIcons.hamburgerLight,
                btnColor: AppColors.tPrimaryColor,
              ),
              SizedBox(height: height * .02),
              ActionBtn(
                text: 'Request Withdraw',
                widthM: width * .8,
                icon: AppIcons.getIcon('upload', AppColors.tWhite),
                btnColor: AppColors.tShadeColor,
              ),
              const Text('Withdraw'),
              MediumActionBtn(
                text: 'Withdraw',
                icon: AppIcons.getIcon('upload', AppColors.tWhite),
                btnColor: AppColors.tPrimaryColor,
              ),
              SizedBox(height: height * .02),
              const MediumActionBtn(
                text: 'Add your account details',
                btnColor: AppColors.tPrimaryColor,
              ),
              const Text('Total'),
              TotalCardOne(
                totalNum: '12',
                width: width * .9,
                height: height * .2,
              ),
              const Text('Total 2'),
              TotalCardTwo(
                totalNum: '12',
                width: width * .9,
                height: height * .2,
              ),
              const Text('Total 3'),
              SizedBox(height: height * .02),
              TotalCardThree(
                totalNum: '12',
                width: width * .9,
                height: height * .2,
                text1: 'You\'ve done well this month, Cheers 🥂',
                text2: 'Free Lunches',
              ),
              SizedBox(height: height * .02),
              TotalCardThree(
                totalNum: '500',
                width: width * .9,
                height: height * .2,
                text1: 'You\'ve',
                text2: 'Free Lunches',
              ),
              SizedBox(height: height * .02),
              WithdrawSummary(
                totalLunch: 'x12',
                worth: '\$120(\$10 per lunch)',
                width: width,
                height: height,
              ),
              SizedBox(height: height * .02),
              AccountInfo(
                width: width,
                height: height,
                bankName: 'GTB',
                accountName: 'Samuel Igboji Uche',
                accountNumber: '*******415',
              ),
              SizedBox(height: height * .02),
              const AvatarComponent(
                image: AssetImage('assets/images/dp.png'),
                width: 50,
                height: 50,
              ),
              SizedBox(height: height * .02),
              const AvatarComponent(
                image: AssetImage('assets/images/dp.png'),
                width: 40,
                height: 40,
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
      ),
    );
  }
}
