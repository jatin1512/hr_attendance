import 'package:flutter/material.dart';
import 'package:hr_attendance/module/home/widget/holiday_item.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import 'model/holiday_model.dart';

class HolidayScreen extends StatefulWidget {
  const HolidayScreen({super.key});

  @override
  State<HolidayScreen> createState() => _HolidayScreenState();
}

class _HolidayScreenState extends State<HolidayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.homeBackgroundColor,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          'Holiday List',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: AppFonts.poppinsSemiBold,
            color: AppColors.colorBlack,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: holidayList.length,
            itemBuilder: (context, index) {
              final item = holidayList[index];
              return HolidayItem(
                holidayModel: item,
              );
            },
          ),
        ),
      ),
    );
  }
}
