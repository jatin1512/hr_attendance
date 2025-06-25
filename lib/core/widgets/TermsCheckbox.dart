import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../res/app_colors.dart';
import '../res/app_fonts.dart';

class TermsCheckbox extends StatefulWidget {
  const TermsCheckbox({super.key});

  @override
  State<TermsCheckbox> createState() => _TermsCheckboxState();
}

class _TermsCheckboxState extends State<TermsCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Ensure full width
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value ?? false;
              });
            },
            activeColor: AppColors.buttonColorBlue,
            checkColor: Colors.white,
            side: const BorderSide(color: AppColors.buttonColorBlue),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0), // Align text with checkbox
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: AppColors.colorBlack,
                    fontSize: 14,
                    fontFamily: AppFonts.poppinsRegular,
                  ),
                  children: [
                    const TextSpan(text: "I agree to the "),
                    TextSpan(
                      text: "Terms & Conditions",
                      style: const TextStyle(
                        color: AppColors.buttonColorBlue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Terms & Conditions clicked");
                        },
                    ),
                    const TextSpan(text: " & "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: const TextStyle(
                        color: AppColors.buttonColorBlue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy Policy clicked");
                        },
                    ),
                    const TextSpan(text: " set out by this site."),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
