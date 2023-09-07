import 'package:flutter/material.dart';
import 'package:hrm/screens/attendance/absent_page_screen.dart';
import 'package:hrm/screens/attendance/all_attendace_record_screen.dart';
import 'package:hrm/screens/attendance/leaves_page_screen.dart';

class AttendancePageView extends StatelessWidget {
  const AttendancePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyPageView();
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  // ignore: unused_field
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Attendance Record')),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'All'),
              Tab(text: 'Absent'),
              Tab(text: 'Leaves'),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        body: TabBarView(
          children: [
            AllAttendanceRecordScreen(),
            AbsentPageScreen(),
            LeavesPageScreen(),
          ],
        ),
      ),
    );
  }
}
