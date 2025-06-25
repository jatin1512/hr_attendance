import 'package:flutter/material.dart';
import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent(
      {super.key, required this.title, required this.subTitle});

  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            'assets/images/intro_one.png',
            height: 300,
          ),
          Spacer(),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 18,
                color: AppColors.titleColor,
                fontFamily: AppFonts.poppinsSemiBold),
          ),
          const SizedBox(height: 20),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14,
                color: AppColors.subTitleColor,
                fontFamily: AppFonts.poppinsRegular),
          ),
        ],
      ),
    );
  }
}
