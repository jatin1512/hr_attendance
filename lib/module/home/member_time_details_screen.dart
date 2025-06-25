import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hr_attendance/module/home/widget/member_item.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import 'model/member_time_model.dart';

class MemberTimeDetailsScreen extends StatelessWidget {
  const MemberTimeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: AppColors.homeBackgroundColor,
        title: Text(
          'Jane Hawkins',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: AppFonts.poppinsSemiBold,
            color: AppColors.colorBlack,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: memberTimeList.length,
              itemBuilder: (context, index) {
                final item = memberTimeList[index];
                return MemberItem(
                  memberTimeModel: item,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
