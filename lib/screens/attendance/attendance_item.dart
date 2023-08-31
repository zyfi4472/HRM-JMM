import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceItem extends StatelessWidget {
  const AttendanceItem({
    super.key,
    required this.time,
    required this.action,
    required this.icon,
  });

  final String time;
  final String action;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.h,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(time),
            const Spacer(),
            Text(action),
            SizedBox(width: 10.w),
            icon,
          ],
        ),
      ),
    );
  }
}
