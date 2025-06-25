import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/core/widgets/status_checkbox.dart';

import '../res/app_colors.dart';
import '../res/app_fonts.dart';
import 'blue_button.dart';

class BottomSheetHelper {
  static void leaveAppliedMessage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check, color: Colors.white, size: 30),
              ),
              const SizedBox(height: 24),
              const Text(
                'Leave Applied Successfully',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: AppFonts.poppinsSemiBold,
                  color: AppColors.colorBlack,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Your Leave has been\napplied successfully',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.poppinsRegular,
                    color: AppColors.colorBlack54),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              BlueButton(
                  text: "Done",
                  onPressed: () {
                    Get.back();
                    Future.delayed(Duration(milliseconds: 100), () {
                      Get.back();
                    });
                  })
            ],
          ),
        );
      },
    );
  }

  static void showLeaveFilter(BuildContext context) {
    bool isApproved = false;
    bool isPending = false;
    bool isRejected = false;

    bool isSickLeave = false;
    bool isPlannedLeave = false;
    bool isHolidayLeave = false;

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Filter',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: AppFonts.poppinsSemiBold,
                          color: AppColors.colorBlack,
                        ),
                      ),
                      IconButton(
                        icon: Image.asset('assets/icons/close.png',
                            width: 24, height: 24),
                        onPressed: () => Get.back(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  const Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: AppFonts.poppinsSemiBold,
                      color: AppColors.colorBlack,
                    ),
                  ),
                  const SizedBox(height: 10),

                  StatusCheckbox(
                    isSelected: isApproved,
                    label: 'Approved',
                    onTap: () => setState(() => isApproved = !isApproved),
                  ),
                  const SizedBox(height: 12),
                  StatusCheckbox(
                    isSelected: isPending,
                    label: 'Pending',
                    onTap: () => setState(() => isPending = !isPending),
                  ),
                  const SizedBox(height: 12),
                  StatusCheckbox(
                    isSelected: isRejected,
                    label: 'Rejected',
                    onTap: () => setState(() => isRejected = !isRejected),
                  ),
                  const SizedBox(height: 10),
                  const Divider(height: 24),
                  const SizedBox(height: 10),
                  const Text(
                    'Leave Type',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: AppFonts.poppinsSemiBold,
                      color: AppColors.colorBlack,
                    ),
                  ),
                  const SizedBox(height: 16),
                  StatusCheckbox(
                    isSelected: isSickLeave,
                    label: 'Sick Leave',
                    onTap: () => setState(() => isSickLeave = !isSickLeave),
                  ),
                  const SizedBox(height: 12),
                  StatusCheckbox(
                    isSelected: isPlannedLeave,
                    label: 'Planned Leave',
                    onTap: () =>
                        setState(() => isPlannedLeave = !isPlannedLeave),
                  ),
                  const SizedBox(height: 12),
                  StatusCheckbox(
                    isSelected: isHolidayLeave,
                    label: 'Holiday',
                    onTap: () =>
                        setState(() => isHolidayLeave = !isHolidayLeave),
                  ),
                  const SizedBox(height: 20),
                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              isApproved = false;
                              isPending = false;
                              isRejected = false;
                              isHolidayLeave = false;
                              isPlannedLeave = false;
                              isSickLeave = false;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: AppColors.buttonColorBlue),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text(
                            'Reset',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: AppFonts.poppinsMedium,
                              color: AppColors.buttonColorBlue,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print("Approved: $isApproved");
                            print("Pending: $isPending");
                            print("Rejected: $isRejected");
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.buttonColorBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text(
                            'Apply',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.colorWhite,
                              fontFamily: AppFonts.poppinsMedium,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  static void leaveAcceptedMessage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.check, color: Colors.white, size: 30),
              ),
              const SizedBox(height: 24),
              const Text(
                'Leave Accepted Successfully',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: AppFonts.poppinsMedium,
                  color: AppColors.colorBlack,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Leave has been accepted successfully',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.poppinsRegular,
                    color: AppColors.colorBlack54),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              BlueButton(
                  text: "Done",
                  onPressed: () {
                    Get.back();
                    Future.delayed(Duration(milliseconds: 100), () {
                      Get.back();
                    });
                  })
            ],
          ),
        );
      },
    );
  }

  static void leaveRejectedMessage(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.close, color: Colors.white, size: 30),
              ),
              const SizedBox(height: 24),
              const Text(
                'Leave Rejected Successfully',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: AppFonts.poppinsMedium,
                  color: AppColors.colorBlack,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Leave has been rejected successfully',
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: AppFonts.poppinsRegular,
                    color: AppColors.colorBlack54),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              BlueButton(
                  text: "Done",
                  onPressed: () {
                    Get.back();
                    Future.delayed(Duration(milliseconds: 100), () {
                      Get.back();
                    });
                  })
            ],
          ),
        );
      },
    );
  }
}
