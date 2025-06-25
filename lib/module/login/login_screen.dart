import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hr_attendance/core/widgets/blue_button.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import '../../core/route/routes_name.dart';
import '../../core/widgets/custom_password_fields.dart';
import '../../core/widgets/custom_text_fields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40.0),
                      Image.asset(
                        'assets/images/logo.png',
                        height: 100,
                        width: 80,
                      ),
                      const Text(
                        "Welcome Back 👋",
                        style: TextStyle(
                          fontSize: 24,
                          color: AppColors.colorBlack,
                          fontFamily: AppFonts.poppinsSemiBold,
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "to ",
                            style: TextStyle(
                              fontSize: 22,
                              color: AppColors.colorBlack,
                              fontFamily: AppFonts.poppinsSemiBold,
                            ),
                          ),
                          Text(
                            "HR Attendee",
                            style: TextStyle(
                              fontSize: 22,
                              color: AppColors.buttonColorBlue,
                              fontFamily: AppFonts.poppinsSemiBold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5.0),
                      const Text(
                        "Hello there, Login to continue",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.colorGray,
                          fontFamily: AppFonts.poppinsRegular,
                        ),
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        labelText: 'Email Address',
                        hintText: 'Enter your email address',
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                      ),
                      const SizedBox(height: 16),
                      const CustomPasswordField(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(RouteName.forgotPasswordScreen);
                          },
                          child: const Text(
                            "Forgot Password ?",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.buttonColorBlue,
                              fontFamily: AppFonts.poppinsMedium,
                            ),
                          ),
                        ),
                      ),
                      BlueButton(
                        text: "Login",
                        onPressed: () {
                          Get.offAllNamed(RouteName.homeScreen);
                        },
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Text.rich(
                              TextSpan(
                                text: "Didn’t have an account? ",
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: AppColors.colorBlack,
                                  fontFamily: AppFonts.poppinsMedium,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Register",
                                    style: const TextStyle(
                                      fontSize: 14,
                                      color: AppColors.buttonColorBlue,
                                      fontFamily: AppFonts.poppinsMedium,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.toNamed(
                                            RouteName.registrationScreen);
                                      },
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
