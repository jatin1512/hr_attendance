import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../res/app_colors.dart';
import '../res/app_fonts.dart';

class CustomDatePickerField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final DateTime? initialDate;
  final ValueChanged<DateTime> onDateSelected;

  const CustomDatePickerField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.initialDate,
    required this.onDateSelected,
  });

  @override
  State<CustomDatePickerField> createState() => _CustomDatePickerFieldState();
}

class _CustomDatePickerFieldState extends State<CustomDatePickerField> {
  late TextEditingController _controller;
  DateTime? _selectedDate;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialDate;
    _controller = TextEditingController(
      text: _selectedDate != null
          ? DateFormat('dd-MM-yyyy').format(_selectedDate!)
          : '',
    );
  }

  void _pickDate() async {
    setState(() {
      _isFocused = true;
    });

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        _controller.text = DateFormat('dd-MM-yyyy').format(picked);
      });
      widget.onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickDate,
      child: AbsorbPointer(
        child: TextFormField(
          controller: _controller,
          readOnly: true,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.colorBlack,
            fontFamily: AppFonts.poppinsRegular,
          ),
          decoration: InputDecoration(
            labelText: widget.labelText,
            labelStyle: TextStyle(
              fontSize: 14,
              color: _isFocused ? AppColors.buttonColorBlue : AppColors.colorGray,
              fontFamily: AppFonts.poppinsRegular,
            ),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
              color: AppColors.colorGray,
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
            suffixIcon: const Icon(Icons.calendar_month_rounded),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 12.0,
            ),
          ),
        ),
      ),
    );
  }
}

