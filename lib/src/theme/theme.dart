import 'package:flutter/material.dart';
import 'package:workly/src/theme/colors.dart';

abstract class Themes {
  static ThemeData get lightTheme => ThemeData(
    primaryColor: AppColor.primary,
    appBarTheme: const AppBarTheme(backgroundColor: AppColor.primary),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.greyE4, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.greyE4, width: 2),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.primary, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColor.greyE4, width: 2),
      ),
    ),
    iconTheme: IconThemeData(color: AppColor.primary,),
  );
}
