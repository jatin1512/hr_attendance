import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import 'package:hr_attendance/module/home/model/holiday_model.dart';

import '../../../core/res/app_fonts.dart';

class HolidayItem extends StatelessWidget {
  final HolidayModel holidayModel;

  const HolidayItem({super.key, required this.holidayModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 75,
            decoration: BoxDecoration(
              color: holidayModel.isDone
                  ? AppColors.colorGray
                  : AppColors.buttonColorBlue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month_rounded,
                              size: 18, color: AppColors.colorBlack),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            holidayModel.date,
                            style: const TextStyle(
                              fontSize: 14,
                              fontFamily: AppFonts.poppinsMedium,
                              color: AppColors.colorBlack,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        holidayModel.day,
                        style: const TextStyle(
                          fontSize: 14,
                          fontFamily: AppFonts.poppinsRegular,
                          color: AppColors.colorBlack54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    holidayModel.holidayName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: AppFonts.poppinsMedium,
                      color: AppColors.colorBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}
