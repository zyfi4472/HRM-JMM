import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/user_attendance_widget.dart';


class AbsentScreen extends StatelessWidget {
  AbsentScreen({super.key});
  final List<UserAttendanceWidget> userAttendanceItems = [
    UserAttendanceWidget(
      date: 'Friday 31-5-2022',
      isAbsent: true,
      onLeave: false,
    ),
    UserAttendanceWidget(
      date: 'Friday 30-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
    UserAttendanceWidget(
      date: 'Friday 29-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
    UserAttendanceWidget(
      date: 'Friday 28-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
    UserAttendanceWidget(
      date: 'Friday 27-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
    UserAttendanceWidget(
      date: 'Friday 26-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
    UserAttendanceWidget(
      date: 'Friday 25-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
    UserAttendanceWidget(
      date: 'Friday 24-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
    UserAttendanceWidget(
      date: 'Friday 23-5-2022',
      onLeave: false,
      isAbsent: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 30.h,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Showing all records',
              style: TextStyle(color: Color(0XFF141433)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userAttendanceItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = userAttendanceItems[index];
                return UserAttendanceWidget(
                  date: item.date,
                  isAbsent: item.isAbsent,
                  onLeave: item.onLeave,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
