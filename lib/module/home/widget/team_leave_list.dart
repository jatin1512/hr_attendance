import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/core/route/routes_name.dart';
import 'package:hr_attendance/module/home/model/team_leave_model.dart';
import 'package:hr_attendance/module/home/widget/team_leave_item.dart';

class TeamLeaveList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: teamLeaveList.length,
      itemBuilder: (context, index) {
        final item = teamLeaveList[index];
        return TeamLeaveItem(
          rejectedLeaveModel: item,
          onTap: () {
            Get.toNamed(RouteName.leaveDetailsScreen);
          },
        );
      },
    );
  }
}
