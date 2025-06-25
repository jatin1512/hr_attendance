import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hr_attendance/module/home/widget/date_selector.dart';
import 'package:hr_attendance/module/home/widget/home_item_card.dart';
import 'package:hr_attendance/module/home/widget/swipe_check_in_out_button.dart';
import 'package:hr_attendance/module/home/widget/your_activity_item_card.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import '../../core/route/routes_name.dart';
import 'model/your_activity_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      profileTile(
                        onNotificationPressed: () {
                          Get.toNamed(RouteName.notificationListScreen);
                        },
                      ),
                      DateSelector(),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Today Attendance',
                        style: TextStyle(
                            color: AppColors.colorBlack,
                            fontFamily: AppFonts.poppinsMedium,
                            fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: HomeItemCard(
                              title: "Check In",
                              time: "10:20 am",
                              status: "On Time",
                              icon: Icons.login_rounded,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: HomeItemCard(
                              title: "Check Out",
                              time: "07:00 pm",
                              status: "Go Home",
                              icon: Icons.logout_rounded,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: HomeItemCard(
                                title: "Break Time",
                                time: "00:30 min",
                                status: "Avg Time 30 min",
                                icon: Icons.free_breakfast_outlined),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: HomeItemCard(
                              title: "Total Days",
                              time: "28",
                              status: "Working Days",
                              icon: Icons.date_range_rounded,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your Activity',
                            style: TextStyle(
                                color: AppColors.colorBlack,
                                fontFamily: AppFonts.poppinsMedium,
                                fontSize: 18.0),
                          ),
                          Text(
                            'View All',
                            style: TextStyle(
                                color: AppColors.buttonColorBlue,
                                fontFamily: AppFonts.poppinsMedium,
                                fontSize: 14.0),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: yourActivityList.length,
                        itemBuilder: (context, index) {
                          return YourActivityItemCard(
                              model: yourActivityList[index]);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Column(
                children: [
                  SwipeCheckInOutButton(),
                  SizedBox(
                    height: 24.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileTile({
    required VoidCallback onNotificationPressed,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          // Profile Picture
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'assets/images/user_profile.jpeg',
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Michael Mitc',
                  style: const TextStyle(
                    fontSize: 22,
                    fontFamily: AppFonts.poppinsSemiBold,
                    color: AppColors.colorBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Lead UI/UX Designer',
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: AppFonts.poppinsRegular,
                    color: AppColors.colorBlack,
                  ),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade100,
            ),
            child: IconButton(
              icon: const Icon(Icons.notifications_none),
              onPressed: onNotificationPressed,
            ),
          ),
        ],
      ),
    );
  }
}
