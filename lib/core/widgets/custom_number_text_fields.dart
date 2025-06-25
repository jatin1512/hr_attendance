import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../res/app_colors.dart';
import '../res/app_fonts.dart';

class CustomNumberTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffixIcon;

  const CustomNumberTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    this.controller,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  State<CustomNumberTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomNumberTextField> {
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      focusNode: _focusNode,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: const TextStyle(
        fontSize: 14,
        fontFamily: AppFonts.poppinsRegular,
      ),
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: _isFocused ? AppColors.buttonColorBlue : AppColors.colorGray,
          fontSize: 14,
          fontFamily: AppFonts.poppinsRegular,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
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
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: AppColors.colorGray,
            width: 1.5,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 12.0,
        ),
        suffixIcon: widget.suffixIcon,
      ),
    );
  }
}
