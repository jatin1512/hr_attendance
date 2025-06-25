import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationModel {
  final IconData icon;
  final String title;
  final String message;
  final String time;

  NotificationModel({
    required this.icon,
    required this.title,
    required this.message,
    required this.time,
  });
}


final List<NotificationModel> notifications = [
  NotificationModel(
    icon: Icons.person_outline,
    title: 'You update your profile picture',
    message: 'You just update your profile picture.',
    time: 'Just Now',
  ),
  NotificationModel(
    icon: Icons.lock_outline,
    title: 'Password Changed',
    message: 'You’ve completed change the password.',
    time: 'April 12, 2023 at 22:22 Pm',
  ),
  NotificationModel(
    icon: Icons.person,
    title: 'Mark Alen Applied for Leave',
    message: 'Please accept my leave request.',
    time: 'February 23, 2022 at 21:22 Pm',
  ),
  NotificationModel(
    icon: Icons.system_update_alt_outlined,
    title: 'System Update',
    message: 'Please update to newest app, for get amazing experience.',
    time: 'April 15, 2023 at 21:22 Pm',
  ),
  NotificationModel(
    icon: Icons.person_outline,
    title: 'You update your profile picture',
    message: 'You just update your profile picture.',
    time: 'Just Now',
  ),
  NotificationModel(
    icon: Icons.lock_outline,
    title: 'Password Changed',
    message: 'You’ve completed change the password.',
    time: 'April 12, 2023 at 22:22 Pm',
  ),
];
