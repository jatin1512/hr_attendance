import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import 'package:hr_attendance/core/widgets/blue_button.dart';

import '../res/app_fonts.dart';

class SnackBarHelper {
  static void showSuccess(BuildContext context, String message) {
    _showSnackbar(
      context,
      message,
      backgroundColor: AppColors.successColor,
      icon: Icons.check_circle,
    );
  }

  static void showError(BuildContext context, String message) {
    _showSnackbar(
      context,
      message,
      backgroundColor: AppColors.errorColor,
      icon: Icons.error,
    );
  }

  static void _showSnackbar(
    BuildContext context,
    String message, {
    required Color backgroundColor,
    required IconData icon,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  static void showErrorWithAction(
    BuildContext context,
    String message, {
    VoidCallback? onOk,
  }) {
    _showSnackBarWithAction(
      context,
      message,
      backgroundColor: AppColors.errorColor,
      icon: Icons.error,
      onOk: onOk,
    );
  }

  static void showSuccessWithAction(
    BuildContext context,
    String message, {
    VoidCallback? onOk,
  }) {
    _showSnackBarWithAction(
      context,
      message,
      backgroundColor: AppColors.successColor,
      icon: Icons.check_circle,
      onOk: onOk,
    );
  }

  static void _showSnackBarWithAction(
    BuildContext context,
    String message, {
    required Color backgroundColor,
    required IconData icon,
    VoidCallback? onOk,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 4),
        action: SnackBarAction(
          label: 'OK',
          textColor: Colors.white,
          onPressed: () {
            if (onOk != null) {
              onOk();
            }
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

}
