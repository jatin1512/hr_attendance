import 'dart:ui';

import 'package:hr_attendance/core/res/app_colors.dart';

class UpcomingLeaveModel {
  final String status;
  final String date;
  final String applyDays;
  final String leaveBalance;
  final String approvedBy;
  final Color statusColorBG;
  final Color statusColorText;

  UpcomingLeaveModel({
    required this.status,
    required this.date,
    required this.applyDays,
    required this.leaveBalance,
    required this.approvedBy,
    required this.statusColorBG,
    required this.statusColorText,
  });
}

final List<UpcomingLeaveModel> upcomingLeaveList = [
  UpcomingLeaveModel(
      status: "Rejected",
      date: "Jun 15, 2025 - Jun 18, 2025",
      applyDays: "3 Days",
      leaveBalance: "13",
      approvedBy: "Martin Deo",
      statusColorBG: AppColors.bgColorReject,
      statusColorText: AppColors.borderReject),
  UpcomingLeaveModel(
      status: "Approved",
      date: "Apr 15, 2025 - Apr 18, 2025",
      applyDays: "3 Days",
      leaveBalance: "16",
      approvedBy: "Martin Deo",
      statusColorBG: AppColors.bgColorPending,
      statusColorText: AppColors.borderPending),
  UpcomingLeaveModel(
      status: "Approved",
      date: "Mar 10, 2025 - Mar 12, 2025",
      applyDays: "2 Days",
      leaveBalance: "19",
      approvedBy: "Martin Deo",
      statusColorBG: AppColors.bgColorPending,
      statusColorText: AppColors.borderPending),
];


final List<UpcomingLeaveModel> pastLeaveList = [
  UpcomingLeaveModel(
      status: "Rejected",
      date: "May 15, 2025 - May 18, 2025",
      applyDays: "3 Days",
      leaveBalance: "13",
      approvedBy: "Tony",
      statusColorBG: AppColors.bgColorReject,
      statusColorText: AppColors.borderReject),
  UpcomingLeaveModel(
      status: "Approved",
      date: "Apr 01, 2025 - Apr 03, 2025",
      applyDays: "3 Days",
      leaveBalance: "16",
      approvedBy: "Martin Deo",
      statusColorBG: AppColors.bgColorPending,
      statusColorText: AppColors.borderPending),
  UpcomingLeaveModel(
      status: "Approved",
      date: "Mar 01, 2025 - Mar 02, 2025",
      applyDays: "2 Days",
      leaveBalance: "19",
      approvedBy: "Martin Deo",
      statusColorBG: AppColors.bgColorPending,
      statusColorText: AppColors.borderPending),
];
