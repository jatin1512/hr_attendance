import 'package:flutter/material.dart';
import 'package:hr_attendance/module/home/widget/upcoming_leave_item.dart';

import '../model/upcoming_leave_model.dart';

class UpcomingLeaveList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: upcomingLeaveList.length,
      itemBuilder: (context, index) {
        return UpcomingLeaveItem(upcomingLeaveModel: upcomingLeaveList[index]);
      },
    );
  }
}
