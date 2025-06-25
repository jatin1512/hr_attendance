import 'package:flutter/material.dart';
import 'package:hr_attendance/module/home/model/team_member_model.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class TeamUserItem extends StatelessWidget {
  final TeamMemberModel teamMemberModel;
  final VoidCallback? onTap;

  const TeamUserItem({super.key, required this.teamMemberModel, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage('assets/images/user_profile.jpeg'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        teamMemberModel.memberName,
                        style: const TextStyle(
                          fontFamily: AppFonts.poppinsMedium,
                          color: AppColors.colorBlack,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        teamMemberModel.memberEmail,
                        style: const TextStyle(
                          fontFamily: AppFonts.poppinsRegular,
                          color: AppColors.colorBlack54,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert, color: AppColors.colorBlack),
                  onSelected: (value) {
                    if (value == 'call') {
                      // Call logic
                    } else if (value == 'delete') {
                      // Delete logic
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'call',
                      child: Row(
                        children: const [
                          Icon(Icons.call, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'Call',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 'delete',
                      child: Row(
                        children: const [
                          Icon(Icons.delete, color: Colors.red),
                          SizedBox(width: 8),
                          Text(
                            'Delete',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
