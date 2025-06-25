import 'package:flutter/material.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class LeaveCountCard extends StatelessWidget {
  final String title;
  final String count;
  final Color borderColor;
  final Color backgroundColor;

  const LeaveCountCard(
      {super.key,
      required this.title,
      required this.count,
      required this.backgroundColor,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: borderColor,
          width: 1, // Border thickness
        ),
        boxShadow: const [
          BoxShadow(
            color: AppColors.colorBlack12,
            blurRadius: 1,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: AppFonts.poppinsSemiBold,
              color: AppColors.colorBlack,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            count,
            style: TextStyle(
              fontSize: 22,
              fontFamily: AppFonts.poppinsSemiBold,
              color: borderColor,
            ),
          ),
        ],
      ),
    );
  }
}
