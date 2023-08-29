import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/screens/attendance/attendanceItem.dart';

// ignore: must_be_immutable
class UserAttendance extends StatelessWidget {
  UserAttendance(
      {super.key,
      required this.date,
      required this.isAbsent,
      required this.onLeave});

  final String date;
  bool isAbsent;
  bool onLeave;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Column(
        children: [
          Container(
            height: 30.h,
            padding: const EdgeInsets.only(left: 10),
            width: double.infinity,
            alignment: Alignment.centerLeft,
            color: const Color(0XFFF2F2F2),
            child: Text(date),
          ),
          !isAbsent && !onLeave
              ? const Column(
                  children: [
                    AttendanceItem(
                      action: 'Check out',
                      icon: Icon(
                        Icons.logout,
                        color: Colors.deepOrange,
                      ),
                      time: '6:15 pm',
                    ),
                    AttendanceItem(
                      action: 'Check In',
                      icon: Icon(
                        Icons.login,
                        color: Colors.deepOrange,
                      ),
                      time: '9:15 am',
                    ),
                  ],
                )
              : Expanded(
                  child: Container(
                    height: 30.h,
                    alignment: Alignment.center,
                    child: Text(
                      onLeave ? 'On Leave' : 'Absent',
                      style: TextStyle(
                          color: onLeave
                              ? const Color(0XFF4BAFB2)
                              : const Color(0XFFFF0057),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
