import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/core/widgets/bottom_sheet_helper.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';

class LeaveDetailsScreen extends StatelessWidget {
  const LeaveDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget labelValueWidget({
      required String label,
      required String value,
    }) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14.0,
              fontFamily: AppFonts.poppinsRegular,
              color: AppColors.colorBlack54,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: AppFonts.poppinsRegular,
              color: AppColors.colorBlack,
            ),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Leave Details",
          style: TextStyle(
              fontSize: 18.0,
              fontFamily: AppFonts.poppinsMedium,
              color: AppColors.colorBlack),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                labelValueWidget(
                  label: "Title",
                  value: "Sick Leave",
                ),
                const Divider(
                  height: 30,
                  color: AppColors.dividerLine,
                ),
                labelValueWidget(
                  label: "Leave Type",
                  value: "Medical Leave",
                ),
                const Divider(
                  height: 30,
                  color: AppColors.dividerLine,
                ),
                labelValueWidget(
                  label: "Date",
                  value: "April 15,2025 - April 18,2025",
                ),
                const Divider(
                  height: 30,
                  color: AppColors.dividerLine,
                ),
                labelValueWidget(
                  label: "Reason",
                  value: "I need to take a medical leave.",
                ),
                const Divider(
                  height: 30,
                  color: AppColors.dividerLine,
                ),
                labelValueWidget(
                  label: "Applied on",
                  value: "April 14,2025",
                ),
                const Divider(
                  height: 30,
                  color: AppColors.dividerLine,
                ),
                labelValueWidget(
                  label: "Contact Number",
                  value: "(603) 555-0123",
                ),
                const Divider(
                  height: 30,
                  color: AppColors.dividerLine,
                ),
                labelValueWidget(
                  label: "Status",
                  value: "Pending",
                ),
                const Divider(
                  height: 30,
                  color: AppColors.dividerLine,
                ),
                labelValueWidget(
                  label: "Manager Name",
                  value: "Michael Mitc",
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          BottomSheetHelper.leaveRejectedMessage(context);
                        },
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
                        onPressed: () {
                          BottomSheetHelper.leaveAcceptedMessage(context);
                        },
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
        ),
      ),
    );
  }
}
