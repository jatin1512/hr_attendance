import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/module/home/widget/document_screen.dart';
import 'package:hr_attendance/module/home/widget/my_profile_tabs.dart';
import 'package:hr_attendance/module/home/widget/personal_screen.dart';
import 'package:hr_attendance/module/home/widget/professional_screen.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  int selectedTabIndex = 0;

  Widget getCurrentListWidget() {
    switch (selectedTabIndex) {
      case 0:
        return PersonalScreen();
      case 1:
        return ProfessionalScreen();
      case 2:
        return DocumentScreen();
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          "My Profile",
          style: TextStyle(
              fontSize: 16.0,
              fontFamily: AppFonts.poppinsMedium,
              color: AppColors.colorBlack),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.back(); // GetX back navigation
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
          child: Column(
            children: [
              MyProfileTabs(
                selectedIndex: selectedTabIndex,
                onTabChanged: (index) {
                  setState(() {
                    selectedTabIndex = index;
                  });
                },
              ),
              const SizedBox(height: 16),
              Expanded(
                child: getCurrentListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
