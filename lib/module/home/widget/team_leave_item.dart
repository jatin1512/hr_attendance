import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_fonts.dart';
import 'package:hr_attendance/module/home/model/team_leave_model.dart';

import '../../../core/res/app_colors.dart';

class TeamLeaveItem extends StatelessWidget {
  final TeamLeaveModel rejectedLeaveModel;
  final VoidCallback? onTap; // Add this

  const TeamLeaveItem({
    super.key,
    required this.rejectedLeaveModel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Call on item tap
      borderRadius: BorderRadius.circular(12),
      child: Container(
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
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage:
                      AssetImage('assets/images/user_profile.jpeg'),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      rejectedLeaveModel.name,
                      style: const TextStyle(
                        fontFamily: AppFonts.poppinsRegular,
                        color: AppColors.colorBlack,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      rejectedLeaveModel.date,
                      style: const TextStyle(
                        fontFamily: AppFonts.poppinsMedium,
                        color: AppColors.colorBlack,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/close.png',
                      width: 16,
                      height: 16,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "Reject",
                      style: TextStyle(
                          color: AppColors.colorWhite,
                          fontFamily: AppFonts.poppinsRegular,
                          fontSize: 12.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.colorRejectButton,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check_circle_outline_rounded,
                        color: Colors.white),
                    label: const Text(
                      "Accept",
                      style: TextStyle(
                          color: AppColors.colorWhite,
                          fontFamily: AppFonts.poppinsRegular,
                          fontSize: 12.0),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.colorAcceptButton,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
