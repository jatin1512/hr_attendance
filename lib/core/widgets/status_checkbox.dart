import 'package:flutter/material.dart';

import '../res/app_colors.dart';
import '../res/app_fonts.dart';

class StatusCheckbox extends StatelessWidget {
  final bool isSelected;
  final String label;
  final VoidCallback onTap;

  const StatusCheckbox({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color:
                  isSelected ? AppColors.buttonColorBlue : Colors.transparent,
              border: Border.all(
                color: isSelected ? AppColors.buttonColorBlue : Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: isSelected
                ? const Icon(Icons.check, color: Colors.white, size: 16)
                : null,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: AppFonts.poppinsRegular,
              color: AppColors.colorBlack,
            ),
          ),
        ],
      ),
    );
  }
}
