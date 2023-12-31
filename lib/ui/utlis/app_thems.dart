import 'package:flutter/material.dart';
import 'package:islami_app/ui/utlis/app_colors.dart';

abstract class AppTheme {
  static const TextStyle appBarTitleTextStyle = (TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: Appcolors.accent,
  ));
  static const TextStyle quranTabTitleTextStyle = (TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Appcolors.accent,
  ));
}
