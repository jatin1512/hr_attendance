import 'package:flutter/material.dart';

import '../res/app_colors.dart';
import '../res/app_fonts.dart';

class CustomDropdown extends StatelessWidget {
  final String labelText;
  final String hintText;
  final List<String> items;
  final String? selectedItem;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.items,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedItem,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: labelText,
        floatingLabelBehavior: selectedItem == null
            ? FloatingLabelBehavior.never
            : FloatingLabelBehavior.always,
        labelStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.buttonColorBlue,
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
          vertical: 16.0,
          horizontal: 12.0,
        ),
      ),
      hint: Text(
        hintText,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.colorGray,
          fontFamily: AppFonts.poppinsRegular,
        ),
      ),
      icon: const Icon(Icons.keyboard_arrow_down_rounded),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.colorBlack,
                  fontFamily: AppFonts.poppinsRegular,
                ),
              ),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
