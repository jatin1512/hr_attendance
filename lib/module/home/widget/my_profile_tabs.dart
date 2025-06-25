import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';

class MyProfileTabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const MyProfileTabs({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  final List<String> tabs = const ["Personal", "Professional", "Documents"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.leaveTabBG,
        borderRadius: BorderRadius.circular(12),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double tabWidth = constraints.maxWidth / tabs.length;

          return Stack(
            children: [
              // Sliding blue background
              AnimatedPositioned(
                left: selectedIndex * tabWidth,
                width: tabWidth,
                height: 40,
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.buttonColorBlue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              // Tab labels
              Row(
                children: List.generate(tabs.length, (index) {
                  final isSelected = selectedIndex == index;

                  return Expanded(
                    child: GestureDetector(
                      onTap: () => onTabChanged(index),
                      child: Center(
                        child: Text(
                          tabs[index],
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: AppFonts.poppinsMedium,
                            color: isSelected
                                ? AppColors.colorWhite
                                : AppColors.colorBlack54,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          );
        },
      ),
    );
  }
}
