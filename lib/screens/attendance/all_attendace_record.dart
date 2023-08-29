import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/screens/attendance/user_attendance.dart';

class AttendanceRecord extends StatelessWidget {
  AttendanceRecord({super.key});

  final List<UserAttendance> userAttendanceItems = [
    UserAttendance(
      date: 'Friday 31-5-2022',
      isAbsent: false,
      onLeave: true,
    ),
    UserAttendance(
      date: 'Friday 30-5-2022',
      isAbsent: true,
      onLeave: false,
    ),
    UserAttendance(
      date: 'Friday 29-5-2022',
      isAbsent: false,
      onLeave: false,
    ),
    UserAttendance(
      date: 'Friday 28-5-2022',
      isAbsent: true,
      onLeave: false,
    ),
    UserAttendance(
      date: 'Friday 27-5-2022',
      isAbsent: false,
      onLeave: false,
    ),
    UserAttendance(
      date: 'Friday 26-5-2022',
      isAbsent: false,
      onLeave: false,
    ),
    UserAttendance(
      date: 'Friday 25-5-2022',
      isAbsent: true,
      onLeave: false,
    ),
    UserAttendance(
      date: 'Friday 24-5-2022',
      isAbsent: false,
      onLeave: true,
    ),
    UserAttendance(
      date: 'Friday 23-5-2022',
      isAbsent: false,
      onLeave: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // final Widget customDrawer = SvgPicture.asset('assets/drawer.svg');
    // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
                return UserAttendance(
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