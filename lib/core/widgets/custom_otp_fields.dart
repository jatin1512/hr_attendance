import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';

class CustomOtpFields extends StatefulWidget {
  final void Function(String) onCompleted;

  const CustomOtpFields({super.key, required this.onCompleted});

  @override
  State<CustomOtpFields> createState() => _CustomOtpFieldsState();
}

class _CustomOtpFieldsState extends State<CustomOtpFields> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;
  final int fieldCount = 4;
  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(4, (_) => FocusNode());
    _controllers = List.generate(4, (_) => TextEditingController());

    // Listen to focus change to update UI
    for (var node in _focusNodes) {
      node.addListener(() {
        setState(() {});
      });
    }
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length == 1 && index < 3) {
      _focusNodes[index + 1].requestFocus();
    }
    if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    String otp = _controllers.map((e) => e.text).join();
    if (otp.length == 4) {
      widget.onCompleted(otp);
    }
  }

  Color _getBorderColor(int index) {
    if (_focusNodes[index].hasFocus) {
      return AppColors.buttonColorBlue; // selectedColor
    } else if (_controllers[index].text.isNotEmpty) {
      return AppColors.buttonColorBlue; // activeColor
    } else {
      return Colors.grey.shade300; // inactiveColor
    }
  }

  Widget _buildOtpBox(int index) {
    return Container(
      width: 60,
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          counterText: "",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: _getBorderColor(index)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: _getBorderColor(index)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: _getBorderColor(index), width: 2),
          ),
        ),
        onChanged: (value) => _onChanged(value, index),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, _buildOtpBox),
    );
  }
}
