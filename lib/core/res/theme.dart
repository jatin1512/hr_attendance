import 'package:flutter/material.dart';
import '../res/app_colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    popupMenuTheme: PopupMenuThemeData(
      color: AppColors.colorWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 8,
    ),
  );
}
