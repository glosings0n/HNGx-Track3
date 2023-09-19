import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// This file will contain the svg icons that'll be used in the application

class AppSvgIcons {
  static Widget home =
      SvgPicture.asset('assets/svgs/home.svg', semanticsLabel: 'home');
  static Widget homeActive =
      SvgPicture.asset('assets/svgs/home-active.svg', semanticsLabel: 'home active');
  static Widget hamburgerDark =
      SvgPicture.asset('assets/svgs/hambuger-dark.svg', semanticsLabel: 'hambuger dark');
  static Widget hamburgerLight =
      SvgPicture.asset('assets/svgs/hambuger-light.svg', semanticsLabel: 'hambuger light');
  static Widget hamburgerLightTotal =
      SvgPicture.asset('assets/svgs/hambuger-light.svg', semanticsLabel: 'hambuger light', width: 32, height: 24);
  static Widget hamburgerPrimary =
      SvgPicture.asset('assets/svgs/hambuger-primary.svg', semanticsLabel: 'hambuger primary', width: 32, height: 24,);
  static Widget lunchSent =
      SvgPicture.asset('assets/svgs/svg_one.svg', semanticsLabel: 'Lunch Sent');
  static Widget withdrawal =
      SvgPicture.asset('assets/svgs/svg2.svg', semanticsLabel: 'Withdrawal');
}
