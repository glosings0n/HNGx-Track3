import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppIcons {
  static const IconData home = IconlyBold.home;
  static const IconData notification= IconlyLight.notification;
  static const IconData profile = IconlyLight.profile;
  static const IconData search = IconlyLight.search;
  static const IconData upload = IconlyLight.upload;
  static const IconData edit = IconlyLight.edit;
  static const IconData arrowLeft = IconlyLight.arrow_left;
 
  // Add more icons here

  static Widget getIcon(String iconName, Color color) {
    switch (iconName) {
      case 'home':
        return Icon(home, color: color);
      case 'hamburger':
        return Icon(notification, color: color);
      case 'profile':
        return Icon(profile, color: color);
      case 'search':
        return Icon(search, color: color);
      case 'upload':
        return Icon(upload, color: color);
      case 'edit':
        return Icon(edit, color: color);
      case 'arrowLeft':
        return Icon(arrowLeft, color: color);
      // Add more cases for other icons
      default:
        return Icon(Icons.error, color: color);
    }
  }
}