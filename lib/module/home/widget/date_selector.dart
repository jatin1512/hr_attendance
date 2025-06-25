import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import 'package:hr_attendance/core/res/app_fonts.dart';
import 'package:intl/intl.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  late List<DateTime> dateList;
  int selectedIndex = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    dateList = _getCurrentMonthDates();
    selectedIndex = dateList.indexWhere((date) =>
    DateFormat('yyyy-MM-dd').format(date) ==
        DateFormat('yyyy-MM-dd').format(DateTime.now()));

    // Scroll after the first frame is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSelectedIndex();
    });
  }

  List<DateTime> _getCurrentMonthDates() {
    final now = DateTime.now();
    final lastDay = DateTime(now.year, now.month + 1, 0);
    return List.generate(
      lastDay.day,
          (index) => DateTime(now.year, now.month, index + 1),
    );
  }

  void _scrollToSelectedIndex() {
    const itemWidth = 72.0; // 60 width + 12 margin (6 each side)
    _scrollController.animateTo(
      selectedIndex * itemWidth,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: dateList.length,
        itemBuilder: (context, index) {
          final date = dateList[index];
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              width: 60,
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected
                    ? AppColors.buttonColorBlue
                    : AppColors.colorWhite,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  if (isSelected)
                    BoxShadow(
                      color: AppColors.buttonColorBlue.withOpacity(0.4),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('dd').format(date),
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: AppFonts.poppinsSemiBold,
                      color: isSelected
                          ? AppColors.colorWhite
                          : AppColors.colorBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    DateFormat('E').format(date),
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: AppFonts.poppinsMedium,
                      color: isSelected
                          ? AppColors.colorWhite
                          : AppColors.colorBlack,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
