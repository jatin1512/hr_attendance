import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';

import '../res/app_fonts.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({super.key, required this.text, required this.onPressed});

  final String text;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColorBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: AppFonts.poppinsMedium),
        ),
      ),
    );
  }


}
