import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourActivityModel {
  final String title;
  final String date;
  final String time;
  final String status;
  final IconData icon;

  YourActivityModel({
    required this.title,
    required this.date,
    required this.time,
    required this.status,
    required this.icon,
  });
}


final List<YourActivityModel> yourActivityList = [
  YourActivityModel(
    title: 'Check In',
    date: 'April 17, 2023',
    time: '10:00 am',
    status: 'On Time',
    icon: Icons.login,
  ),
  YourActivityModel(
    title: 'Break In',
    date: 'April 17, 2023',
    time: '01:30 pm',
    status: 'Lunch break',
    icon: Icons.lunch_dining_outlined,
  ),
  YourActivityModel(
    title: 'Break Out',
    date: 'April 17, 2023',
    time: '02:00 pm',
    status: 'Lunch break',
    icon: Icons.lunch_dining_outlined,
  ),
  YourActivityModel(
    title: 'Tea break In',
    date: 'April 17, 2023',
    time: '04:30 pm',
    status: 'Tea break',
    icon: Icons.free_breakfast_outlined,
  ),

  YourActivityModel(
    title: 'Tea break Out',
    date: 'April 17, 2023',
    time: '04:45 pm',
    status: 'Tea break',
    icon: Icons.free_breakfast_outlined,
  ),
  YourActivityModel(
    title: 'Check Out',
    date: 'April 17, 2023',
    time: '6:00 pm',
    status: 'On Time',
    icon: Icons.logout,
  ),
  // Add more entries if needed
];