import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/module/login/login_screen.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import '../../core/widgets/blue_button.dart';
import '../../core/widgets/snackbar_helper.dart';

class ForgotPwdChangePassword extends StatefulWidget {
  const ForgotPwdChangePassword({super.key});

  @override
  State<ForgotPwdChangePassword> createState() =>
      _ForgotPwdChangePasswordState();
}

class _ForgotPwdChangePasswordState extends State<ForgotPwdChangePassword> {
  bool _isNewPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String label,
    required bool isPasswordVisible,
    required VoidCallback onVisibilityToggle,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        labelText: label,
        hintText: label,
        labelStyle: const TextStyle(
          color: AppColors.colorBlack,
          fontSize: 14,
          fontFamily: AppFonts.poppinsRegular,
        ),
        hintStyle: const TextStyle(
          color: AppColors.colorGray,
          fontSize: 14,
          fontFamily: AppFonts.poppinsRegular,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
          onPressed: onVisibilityToggle,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.colorGray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.buttonColorBlue),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.colorGray),
        ),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Enter New Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: AppFonts.poppinsSemiBold,
                    color: AppColors.colorBlack,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Please enter your new password',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.colorGray,
                    fontFamily: AppFonts.poppinsRegular,
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Image.asset(
                    'assets/images/forgot_pwd_change_password.png',
                    height: 250,
                  ),
                ),
                const SizedBox(height: 30),
                _buildPasswordField(
                  controller: _newPasswordController,
                  label: "Enter New Password",
                  isPasswordVisible: _isNewPasswordVisible,
                  onVisibilityToggle: () {
                    setState(() {
                      _isNewPasswordVisible = !_isNewPasswordVisible;
                    });
                  },
                ),
                const SizedBox(height: 16),
                _buildPasswordField(
                  controller: _confirmPasswordController,
                  label: "Re-Enter Password",
                  isPasswordVisible: _isConfirmPasswordVisible,
                  onVisibilityToggle: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
                const SizedBox(height: 20),
                BlueButton(
                  text: "Update Password",
                  onPressed: () {
                    SnackBarHelper.showSuccessWithAction(
                      context,
                      'Password updated successfully',
                      onOk: () {
                        Get.off(() => LoginScreen());
                      },
                    );
                  },
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
