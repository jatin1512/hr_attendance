import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';

import '../../../core/res/app_fonts.dart';

class HomeItemCard extends StatelessWidget {
  final String title;
  final String time;
  final String status;
  final IconData icon;

  const HomeItemCard({
    super.key,
    required this.title,
    required this.time,
    required this.status,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.circular(14),
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
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppColors.buttonColorBlue50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  size: 16,
                  color: AppColors.buttonColorBlue,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: AppFonts.poppinsRegular,
                  color: AppColors.colorBlack54,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            time,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: AppFonts.poppinsSemiBold,
              color: AppColors.colorBlack,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            status,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: AppFonts.poppinsMedium,
              color: AppColors.colorBlack54,
            ),
          ),
        ],
      ),
    );
  }
}
