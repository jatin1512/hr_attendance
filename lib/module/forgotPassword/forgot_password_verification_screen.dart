import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import '../../core/route/routes_name.dart';
import '../../core/widgets/blue_button.dart';
import '../../core/widgets/custom_otp_fields.dart';

class ForgotPasswordVerificationScreen extends StatefulWidget {
  const ForgotPasswordVerificationScreen({super.key});

  @override
  State<ForgotPasswordVerificationScreen> createState() =>
      _ForgotPasswordVerificationScreenState();
}

class _ForgotPasswordVerificationScreenState
    extends State<ForgotPasswordVerificationScreen> {
  TextEditingController otpController = TextEditingController();
  int secondsRemaining = 30;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  void resendCode() {
    setState(() {
      secondsRemaining = 30;
    });
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      if (secondsRemaining > 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        t.cancel();
      }
    });
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
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Enter Verification Code',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: AppFonts.poppinsSemiBold,
                      color: AppColors.colorBlack),
                ),
                const SizedBox(height: 8),
                const Text(
                  'We have sent the code verification to your mobile number.',
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
                    'assets/images/forgot_pwd_verification.png',
                    height: 250,
                  ),
                ),
                Spacer(),
                CustomOtpFields(
                  onCompleted: (otp) {
                    print("OTP: $otp");
                  },
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "00:${secondsRemaining.toString().padLeft(2, '0')}",
                      style: const TextStyle(
                          color: AppColors.colorGray,
                          fontFamily: AppFonts.poppinsRegular,
                          fontSize: 12.0),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: secondsRemaining == 0 ? resendCode : null,
                      child: Text(
                        "Resend it",
                        style: TextStyle(
                          color: secondsRemaining == 0
                              ? AppColors.buttonColorBlue
                              : AppColors.colorGray,
                          fontFamily: secondsRemaining == 0
                              ? AppFonts.poppinsMedium
                              : AppFonts.poppinsRegular,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                BlueButton(
                  text: "Verify",
                  onPressed: () {
                    Get.toNamed(RouteName.forgotPwdChangePasswordScreen);
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
