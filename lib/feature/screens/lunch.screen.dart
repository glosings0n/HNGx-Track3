import 'package:flutter/material.dart';
import 'package:free_lunch_app/utils/colors.dart';
import '../../utils/icons.dart';
import '../../utils/svg_icons.dart';
import '../../utils/typography.dart';
import '../../widgets/action_buttons.dart';
import '../../widgets/avatar.dart';
import '../../widgets/comment_widget.dart';
import '../../widgets/custom_card.dart';

class SendLunches extends StatelessWidget {
  final String totalLunches;
  const SendLunches({super.key, required this.totalLunches});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.only(left: 2),
                    margin: const EdgeInsets.only(
                      top: 56,
                    ),
                    width: double.infinity,
                    height: 24,
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Icon(AppIcons.arrowLeft)]),
                  ),
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.only(left: 2),
                    margin: const EdgeInsets.only(
                      top: 56,
                    ),
                    width: double.infinity,
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Send lunch',
                          style: AppTypography.subHeader2Black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 136,
                  ),
                  child: Column(
                    children: [
                      const AvatarComponent(
                        // image: AssetImage(worker.profilePath!),
                        image: AssetImage('assets/images/profile_bello.png'),
                        width: 88,
                        height: 88,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        // worker.name!,
                        'Folajomi Bello',
                        style: AppTypography.subHeader,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        // worker.designation!,
                        'Product Designer',
                        style: AppTypography.bodyText3,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 321,
                  left: 35,
                  right: 35,
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Select the amount of free lunch',
                      style: AppTypography.bodyText3,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCard(
                          cardText: '1',
                          icon: AppSvgIcons.hamburgerDark,
                        ),
                        const SizedBox(width: 15),
                        CustomCard(
                          cardText: '2',
                          icon: AppSvgIcons.hamburgerDark,
                        ),
                        const SizedBox(width: 15),
                        CustomCard(
                          cardText: '3',
                          icon: AppSvgIcons.hamburgerDark,
                        ),
                        const SizedBox(width: 15),
                        CustomCard(
                          cardText: '4',
                          icon: AppSvgIcons.hamburgerDark,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Lunch Bal ',
                          style: AppTypography.bodyText3,
                        ),
                        Text(
                          totalLunches,
                          style: AppTypography.subHeader3w500Black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 446,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Say something nice (Optional)',
                    style: AppTypography.bodyText3,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 468,
                ),
                child: const CommentWidget(
                  initialCommentText: 'Great Job! You are true mentor. Enjoy the lunch!',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 740,
                ),
                child: ActionBtn(
                  widthM: width,
                  text: 'Send lunch',
                  icon: AppSvgIcons.hamburgerLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
