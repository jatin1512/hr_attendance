import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hr_attendance/core/res/app_colors.dart';

import '../../core/res/app_fonts.dart';
import '../../core/route/routes_name.dart';
import '../../core/widgets/blue_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String selectedMethod = 'email';

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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Forgot password 🤔',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: AppFonts.poppinsSemiBold,
                    color: AppColors.colorBlack),
              ),
              const SizedBox(height: 8),
              const Text(
                'Select which contact details should we use to reset your password.',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.colorGray,
                  fontFamily: AppFonts.poppinsRegular,
                ),
              ),
              const SizedBox(height: 16),
              Spacer(),
              Center(
                child: Image.asset(
                  'assets/images/forgot_password.png',
                  height: 250,
                ),
              ),
              Spacer(),
              _buildOptionCard(
                icon: Icons.email_outlined,
                title: 'Email',
                subtitle: 'michael.mitc@example.com',
                value: 'email',
              ),
              const SizedBox(height: 16),
              _buildOptionCard(
                icon: Icons.phone_outlined,
                title: 'Phone Number',
                subtitle: '(217) 555-0113',
                value: 'phone',
              ),
              const SizedBox(height: 16),
              BlueButton(
                text: "Continue",
                onPressed: () {
                  Get.toNamed(RouteName.forgotPwdVerificationScreen);
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required String value,
  }) {
    final bool isSelected = selectedMethod == value;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedMethod = value;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? AppColors.buttonColorBlue : AppColors.colorGray,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? const Color(0xFFEFF4FF) : Colors.white,
        ),
        child: Row(
          children: [
            Icon(icon,
                color: isSelected
                    ? AppColors.buttonColorBlue
                    : AppColors.colorGray),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: AppFonts.poppinsRegular,
                          color: AppColors.colorBlack)),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      style: const TextStyle(
                          color: AppColors.colorGray,
                          fontSize: 14,
                          fontFamily: AppFonts.poppinsRegular)),
                ],
              ),
            ),
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color:
                  isSelected ? AppColors.buttonColorBlue : AppColors.colorGray,
            )
          ],
        ),
      ),
    );
  }
}
