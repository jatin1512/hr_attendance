import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/module/home/widget/team_user_item.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import '../../core/route/routes_name.dart';
import 'model/team_member_model.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.homeBackgroundColor,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          'Team Members',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: AppFonts.poppinsSemiBold,
            color: AppColors.colorBlack,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/add.png',
              width: 24,
              height: 24,
              color: AppColors.colorBlack,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: teamMemberList.length,
              itemBuilder: (context, index) {
                final item = teamMemberList[index];
                return TeamUserItem(
                  teamMemberModel: item,
                  onTap: () {
                    Get.toNamed(RouteName.memberTimeDetailsScreen);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
