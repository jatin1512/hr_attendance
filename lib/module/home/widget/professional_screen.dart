import 'package:flutter/material.dart';

import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class ProfessionalScreen extends StatelessWidget {
  const ProfessionalScreen({super.key});

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
            labelValueWidget(label: 'Employee ID', value: '7879987'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(
                label: 'Designation', value: 'Lead UI/UX Designer'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(
                label: 'Company Email Address',
                value: 'michael.mitc07@abc.com'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(label: 'Employee Type', value: 'Permanent'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(label: 'Department', value: 'Design'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(label: 'Reporting Manager', value: 'Robert Fox'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(
                label: 'Company Experience', value: '2 Year 5 Months'),
            const Divider(
              height: 30,
              color: AppColors.dividerLine,
            ),
            labelValueWidget(
                label: 'Office Time', value: '10:00 am to 07:00 pm'),
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
