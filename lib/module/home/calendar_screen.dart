import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/core/widgets/bottom_sheet_helper.dart';
import 'package:hr_attendance/module/home/widget/leave_count_card.dart';
import 'package:hr_attendance/module/home/widget/leave_tabs.dart';
import 'package:hr_attendance/module/home/widget/past_leave_list.dart';
import 'package:hr_attendance/module/home/widget/team_leave_list.dart';
import 'package:hr_attendance/module/home/widget/upcoming_leave_list.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import '../../core/route/routes_name.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  int selectedTabIndex = 0;

  Widget getCurrentListWidget() {
    switch (selectedTabIndex) {
      case 0:
        return UpcomingLeaveList();
      case 1:
        return PastLeaveList();
      case 2:
        return TeamLeaveList();
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'All Leaves',
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: AppFonts.poppinsSemiBold,
                        color: AppColors.colorBlack,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Image.asset('assets/icons/add.png',
                        width: 24, height: 24),
                    onPressed: () {
                      Get.toNamed(RouteName.applyLeaveScreen);
                    },
                  ),
                  IconButton(
                    icon: Image.asset('assets/icons/filter.png',
                        width: 24, height: 24),
                    onPressed: () {
                      BottomSheetHelper.showLeaveFilter(context);
                    },
                  ),
                ],
              ),
            ),

            // Everything else scrolls
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    // LeaveCountCards
                    Row(
                      children: [
                        Expanded(
                          child: LeaveCountCard(
                            title: "Leave\nBalance",
                            count: "20",
                            backgroundColor: AppColors.bgColorBalance,
                            borderColor: AppColors.borderBalance,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: LeaveCountCard(
                            title: "Leave\nApproved",
                            count: "2",
                            backgroundColor: AppColors.bgColorApproved,
                            borderColor: AppColors.borderApproved,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: LeaveCountCard(
                            title: "Leave\nPending",
                            count: "4",
                            backgroundColor: AppColors.bgColorPending,
                            borderColor: AppColors.borderPending,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: LeaveCountCard(
                            title: "Leave\nCancelled",
                            count: "5",
                            backgroundColor: AppColors.bgColorReject,
                            borderColor: AppColors.borderReject,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Tabs
                    LeaveTabs(
                      selectedIndex: selectedTabIndex,
                      onTabChanged: (index) {
                        setState(() {
                          selectedTabIndex = index;
                        });
                      },
                    ),
                    const SizedBox(height: 16),

                    // Tab-specific List
                    getCurrentListWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
