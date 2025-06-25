import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import '../../core/route/routes_name.dart';
import '../../core/widgets/TermsCheckbox.dart';
import '../../core/widgets/blue_button.dart';
import '../../core/widgets/custom_password_fields.dart';
import '../../core/widgets/custom_text_fields.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailAddressController;

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailAddressController = TextEditingController();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
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
                        "Register Account",
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
                        "Hello there, register to continue",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.colorGray,
                          fontFamily: AppFonts.poppinsRegular,
                        ),
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        labelText: 'First Name',
                        hintText: 'Enter First Name',
                        keyboardType: TextInputType.text,
                        controller: firstNameController,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        labelText: 'Last Name',
                        hintText: 'Enter Last Name',
                        keyboardType: TextInputType.text,
                        controller: lastNameController,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        labelText: 'Email Address',
                        hintText: 'Enter Email Address',
                        keyboardType: TextInputType.emailAddress,
                        controller: emailAddressController,
                      ),
                      const SizedBox(height: 16),
                      const CustomPasswordField(
                        labelText: 'Password',
                        hintText: 'Enter Password',
                      ),
                      const SizedBox(height: 16),
                      const CustomPasswordField(
                        labelText: 'Confirm Password',
                        hintText: 'Enter Confirm Password',
                      ),
                      const SizedBox(height: 16),
                      const TermsCheckbox(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  BlueButton(
                    text: "Register",
                    onPressed: () {
                      // Add your registration logic here
                    },
                  ),
                  const SizedBox(height: 20),
                  Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.colorBlack,
                        fontFamily: AppFonts.poppinsMedium,
                      ),
                      children: [
                        TextSpan(
                          text: "Login",
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.buttonColorBlue,
                            fontFamily: AppFonts.poppinsMedium,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(RouteName.loginScreen);
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
