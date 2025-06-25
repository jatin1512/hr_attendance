import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/core/res/app_fonts.dart';
import 'package:hr_attendance/core/widgets/bottom_sheet_helper.dart';

import '../../core/res/app_colors.dart';
import '../../core/widgets/blue_button.dart';
import '../../core/widgets/custom_date_picker_field.dart';
import '../../core/widgets/custom_dropdown.dart';
import '../../core/widgets/custom_multiline_textfield.dart';
import '../../core/widgets/custom_number_text_fields.dart';
import '../../core/widgets/custom_text_fields.dart';
import '../../core/widgets/snackbar_helper.dart';

class ApplyLeaveScreen extends StatefulWidget {
  const ApplyLeaveScreen({super.key});

  @override
  State<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  late TextEditingController titleController;
  late TextEditingController mobileNumberController;
  late TextEditingController reasonController;
  String? selectedLeaveType;
  DateTime? selectedStartDate;
  DateTime? selectedEndDate;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController();
    mobileNumberController = TextEditingController();
    reasonController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    mobileNumberController.dispose();
    reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.back(); // GetX back navigation
          },
        ),
        title: Text(
          "Apply Leave",
          style: TextStyle(
              fontSize: 16.0,
              fontFamily: AppFonts.poppinsMedium,
              color: AppColors.colorBlack),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                CustomTextField(
                  labelText: 'Title',
                  hintText: 'Enter title',
                  keyboardType: TextInputType.text,
                  controller: titleController,
                ),
                const SizedBox(height: 16),
                CustomDropdown(
                  labelText: 'Leave Type',
                  hintText: 'Select leave type',
                  items: [
                    'Earned Leave',
                    'Casual Leave',
                    'Sick Leave',
                    'Maternity Leave',
                    'Paternity Leave',
                    'Compensatory Off (Comp-off)',
                    'Bereavement Leave',
                    'Marriage Leave',
                    'Loss of Pay (LOP) / Leave Without Pay (LWP)',
                    'Public Holidays',
                    'Compassionate Leave'
                  ],
                  selectedItem: selectedLeaveType,
                  onChanged: (value) {
                    setState(() {
                      selectedLeaveType = value;
                    });
                  },
                ),
                const SizedBox(height: 16),
                CustomNumberTextField(
                  labelText: 'Mobile Number',
                  hintText: 'Enter mobile number',
                  keyboardType: TextInputType.phone,
                  controller: mobileNumberController,
                  obscureText: false,
                ),
                const SizedBox(height: 16),
                CustomDatePickerField(
                  labelText: 'Start Date',
                  hintText: 'Select start date',
                  initialDate: selectedStartDate,
                  onDateSelected: (date) {
                    setState(() {
                      selectedStartDate = date;
                    });
                  },
                ),
                const SizedBox(height: 16),
                CustomDatePickerField(
                  labelText: 'End Date',
                  hintText: 'Select End date',
                  initialDate: selectedEndDate,
                  onDateSelected: (date) {
                    setState(() {
                      selectedEndDate = date;
                    });
                  },
                ),
                const SizedBox(height: 16),
                CustomMultilineTextField(
                  labelText: 'Reason',
                  controller: reasonController,
                  minLines: 3,
                  maxLines: 5,
                ),
                const SizedBox(height: 20),
                BlueButton(
                  text: "Apply Leave",
                  onPressed: () {
                    BottomSheetHelper.leaveAppliedMessage(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
