import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/res/app_colors.dart';
import '../../core/res/app_fonts.dart';
import 'model/notification_model.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          "Notification",
          style: TextStyle(
              fontSize: 16.0,
              fontFamily: AppFonts.poppinsMedium,
              color: AppColors.colorBlack),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const Divider(height: 32),
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.bgColorBalance,
                child: Icon(item.icon, color: Colors.blueAccent),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontFamily: AppFonts.poppinsMedium,
                        fontSize: 14,
                        color: AppColors.colorBlack,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.message,
                      style: TextStyle(
                        fontFamily: AppFonts.poppinsRegular,
                        fontSize: 12,
                        color: AppColors.colorBlack,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      item.time,
                      style: TextStyle(
                        fontFamily: AppFonts.poppinsRegular,
                        fontSize: 12,
                        color: AppColors.colorBlack54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
