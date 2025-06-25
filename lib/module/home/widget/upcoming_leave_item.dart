import 'package:flutter/material.dart';
import 'package:hr_attendance/module/home/model/upcoming_leave_model.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class UpcomingLeaveItem extends StatelessWidget {
  final UpcomingLeaveModel upcomingLeaveModel;

  const UpcomingLeaveItem({super.key, required this.upcomingLeaveModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.colorWhite,
        borderRadius: BorderRadius.circular(12),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Date',
                style: TextStyle(
                    fontSize: 14,
                    color: AppColors.colorBlack54,
                    fontFamily: AppFonts.poppinsRegular),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: upcomingLeaveModel.statusColorBG,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Approved',
                  style: TextStyle(
                    color: upcomingLeaveModel.statusColorText,
                    fontFamily: AppFonts.poppinsMedium,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            upcomingLeaveModel.date,
            style: TextStyle(
              fontFamily: AppFonts.poppinsMedium,
              color: AppColors.colorBlack,
              fontSize: 16,
            ),
          ),
          const Divider(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Apply Days',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.colorBlack54,
                          fontFamily: AppFonts.poppinsRegular)),
                  SizedBox(height: 4),
                  Text(upcomingLeaveModel.applyDays,
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.colorBlack,
                          fontFamily: AppFonts.poppinsMedium)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Leave Balance',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.colorBlack54,
                          fontFamily: AppFonts.poppinsRegular)),
                  SizedBox(height: 4),
                  Text(upcomingLeaveModel.leaveBalance,
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.colorBlack,
                          fontFamily: AppFonts.poppinsMedium)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Approved By',
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.colorBlack54,
                          fontFamily: AppFonts.poppinsRegular)),
                  SizedBox(height: 4),
                  Text(upcomingLeaveModel.approvedBy,
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.colorBlack,
                          fontFamily: AppFonts.poppinsMedium)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
