import 'package:flutter/material.dart';
import '../res/app_colors.dart';
import '../res/app_fonts.dart';

class CustomMultilineTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final int minLines;
  final int maxLines;
  final Widget? suffixIcon;
  final bool enabled;

  const CustomMultilineTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.minLines = 3,
    this.maxLines = 5,
    this.suffixIcon,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      enabled: enabled,
      keyboardType: TextInputType.multiline,
      maxLines: maxLines,
      minLines: minLines,
      style: const TextStyle(
        fontSize: 14,
        fontFamily: AppFonts.poppinsRegular,
      ),
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        alignLabelWithHint: true,
        labelStyle: const TextStyle(
          color: AppColors.colorGray,
          fontSize: 14,
          fontFamily: AppFonts.poppinsRegular,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: AppColors.colorGray,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: AppColors.buttonColorBlue,
            width: 1.5,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 12.0,
        ),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
