import 'package:flutter/material.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            labelValueWidget(label: 'Full Name', value: 'Michael Mitc'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(label: 'Email Address', value: 'michael.mitc@gmail.com'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(label: 'Phone Number', value: '(603) 555-0123'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(label: 'Address', value: '53 W.Gray St. Utica, Pennsylvania 57867'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
          ],
        ),
      ),
    );
  }
}
