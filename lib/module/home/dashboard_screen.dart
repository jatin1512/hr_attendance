import 'package:flutter/material.dart';
import 'package:hr_attendance/core/res/app_colors.dart';
import 'package:hr_attendance/module/home/profile_screen.dart';
import 'package:hr_attendance/module/home/team_screen.dart';

import 'calendar_screen.dart';
import 'home_screen.dart';
import 'holiday_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CalendarScreen(),
    const TeamScreen(),
    const HolidayScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildTabIcon(IconData icon, int index) {
    final isSelected = _selectedIndex == index;
    return IconButton(
      icon: Icon(
        icon,
        color: isSelected ? AppColors.buttonColorBlue : AppColors.colorBlack,
      ),
      onPressed: () => _onItemTapped(index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homeBackgroundColor,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        color: AppColors.colorWhite,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildTabIcon(Icons.home_outlined, 0),
              _buildTabIcon(Icons.calendar_today_outlined, 1),
              const SizedBox(width: 40), // space for the FAB
              _buildTabIcon(Icons.beach_access_outlined, 3),
              _buildTabIcon(Icons.person_outline, 4),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: AppColors.buttonColorBlue,
        onPressed: () => _onItemTapped(2),
        child: const Icon(
          Icons.group_outlined,
          color: AppColors.colorWhite,
        ),
      ),
    );
  }
}
