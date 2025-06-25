import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import 'package:hr_attendance/module/home/model/your_activity_model.dart';

import '../../../core/res/app_fonts.dart';

class YourActivityItemCard extends StatelessWidget {
  final YourActivityModel model;

  const YourActivityItemCard({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.colorBlack12,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.buttonColorBlue50,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8),
            child: Icon(model.icon, color: AppColors.buttonColorBlue),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.poppinsMedium,
                    color: AppColors.colorBlack,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  model.date,
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: AppFonts.poppinsRegular,
                    color: AppColors.colorBlack54,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                model.time,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: AppFonts.poppinsMedium,
                  color: AppColors.colorBlack,
                ),
              ),
              SizedBox(height: 4),
              Text(
                model.status,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: AppFonts.poppinsRegular,
                  color: AppColors.colorBlack54,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
