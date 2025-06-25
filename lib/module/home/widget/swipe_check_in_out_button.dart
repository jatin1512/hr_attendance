import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../../../core/res/app_fonts.dart';
import '../../../core/widgets/snackbar_helper.dart';

class SwipeCheckInOutButton extends StatefulWidget {
  const SwipeCheckInOutButton({super.key});

  @override
  State<SwipeCheckInOutButton> createState() => _SwipeCheckInOutButtonState();
}

class _SwipeCheckInOutButtonState extends State<SwipeCheckInOutButton> {
  bool isCheckedIn = false;

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      height: 48,
      sliderButtonIconPadding: 8,
      sliderButtonIconSize: 48,
      borderRadius: 12,
      elevation: 0,
      outerColor: isCheckedIn ? AppColors.checkOut : AppColors.buttonColorBlue,
      innerColor: AppColors.colorWhite,
      sliderButtonIcon: Icon(
        Icons.arrow_forward,
        color: isCheckedIn ? AppColors.checkOut : AppColors.buttonColorBlue,
      ),
      text: isCheckedIn ? "Swipe to Check Out" : "Swipe to Check In",
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: AppFonts.poppinsMedium,
      ),
      onSubmit: () {
        setState(() {
          isCheckedIn = !isCheckedIn;
        });
        SnackBarHelper.showSuccess(
          context,
          isCheckedIn ? "Checked In!" : "Checked Out!",
        );
      },
    );
  }
}
