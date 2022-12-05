import 'package:flutter/material.dart';
import 'package:fourth_pyramid_task/core/utils/color_manager.dart';
import 'package:fourth_pyramid_task/core/utils/styles_manager.dart';

import '../../core/utils/strings_manager.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: ColorManager.primary,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle:
            getSemiBoldStyle(color: ColorManager.textPrimary, fontSize: 18)),
  );
}
