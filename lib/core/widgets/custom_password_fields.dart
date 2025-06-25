import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import 'package:hr_attendance/core/res/app_fonts.dart';

class CustomPasswordField extends StatefulWidget {

  final String labelText;
  final String hintText;
  final TextEditingController? controller;

  const CustomPasswordField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
  });

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureText = true;
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
      obscureText: _obscureText,
      focusNode: _focusNode,
      decoration: InputDecoration(
        labelText: widget.labelText,
        labelStyle: TextStyle(
          color: _isFocused ? AppColors.buttonColorBlue : AppColors.colorGray,
          fontSize: 14,
          fontFamily: AppFonts.poppinsRegular
        ),
        hintStyle:TextStyle(
            color: AppColors.colorGray,
            fontSize: 14,
            fontFamily: AppFonts.poppinsRegular
        ),
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColors.colorGray,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColors.buttonColorBlue,
            width: 1.5,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColors.colorGray,
            width: 1.5,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),
      ),
      style: TextStyle(fontSize: 14,fontFamily: AppFonts.poppinsRegular),
    );
  }
}
