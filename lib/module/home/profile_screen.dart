import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/core/route/routes_name.dart';
import 'package:hr_attendance/core/widgets/blue_button.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/user_profile.jpeg'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Michael Mitc",
                  style: const TextStyle(
                    fontFamily: AppFonts.poppinsMedium,
                    color: AppColors.colorBlack,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "Lead UI/UX Designer",
                  style: const TextStyle(
                    fontFamily: AppFonts.poppinsRegular,
                    color: AppColors.colorBlack54,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                BlueButton(text: 'Edit Profile', onPressed: () {}),
                SizedBox(
                  height: 20,
                ),
                profileMenu(
                  menuName: 'My Profile',
                  icon: Icons.person_outline,
                  onTap: () {
                    Get.toNamed(RouteName.myProfileScreen);
                  },
                ),
                const Divider(
                  height: 30,
                  color: AppColors.unSelectedDot,
                ),
                profileMenu(
                  menuName: 'Settings',
                  icon: Icons.settings_outlined,
                  onTap: () {
                    // Handle navigation or action here
                    print("Profile menu tapped");
                  },
                ),
                const Divider(
                  height: 30,
                  color: AppColors.unSelectedDot,
                ),
                profileMenu(
                  menuName: 'Terms & Conditions',
                  icon: Icons.file_present_rounded,
                  onTap: () {
                    // Handle navigation or action here
                    print("Profile menu tapped");
                  },
                ),
                const Divider(
                  height: 30,
                  color: AppColors.unSelectedDot,
                ),
                profileMenu(
                  menuName: 'Privacy Policy',
                  icon: Icons.policy_outlined,
                  onTap: () {
                    // Handle navigation or action here
                    print("Profile menu tapped");
                  },
                ),
                const Divider(
                  height: 30,
                  color: AppColors.unSelectedDot,
                ),
                logoutMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profileMenu({
    required String menuName,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      // Optional: to match rounded corners
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(icon, size: 18, color: AppColors.colorBlack),
                ),
                const SizedBox(width: 12),
                Text(
                  menuName,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: AppFonts.poppinsMedium,
                    color: AppColors.colorBlack,
                  ),
                ),
              ],
            ),
            Icon(Icons.navigate_next_rounded,
                size: 18, color: AppColors.colorBlack),
          ],
        ),
      ),
    );
  }

  Widget logoutMenu() {
    return InkWell(
      onTap: () {
        Get.offAllNamed(RouteName.loginScreen);
      },
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.logoutBg,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.logout,
                      size: 18, color: AppColors.colorRejectButton),
                ),
                const SizedBox(width: 12),
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: AppFonts.poppinsMedium,
                    color: AppColors.colorRejectButton,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
