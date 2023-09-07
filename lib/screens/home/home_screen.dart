import 'package:flutter/material.dart';
import 'package:hrm/screens/home/components/app_bar_home.dart';
import 'package:intl/intl.dart'; // Import the intl package for DateFormat
import 'package:hrm/screens/home/components/my_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/checkin_status_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? checkInTime; // Store the check-in time
  bool isCheckedIn = false; // Track if user is checked in
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBarHome(
            scaffoldKey: scaffoldKey,
          ),
          SizedBox(height: 30.h),
          CheckInStatusWidget(
            isCheckedIn: isCheckedIn,
            checkInTime: checkInTime,
          ),
          SizedBox(height: 20.h),
          if (isCheckedIn) // Show the text only if isCheckedIn is false
            SizedBox(
              width: 240.w,
              height: 43.h,
              child: const Text(
                'Here is the time when you checked in',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff78787B)),
              ),
            ),
          // const SizedBox(height: 10),
          if (checkInTime != null && isCheckedIn)
            Text(
              'Check-in Time: $checkInTime',
              style: TextStyle(color: const Color(0xff2681C1), fontSize: 18.sp),
            ),
          SizedBox(height: 150.h),
          MyButton(
            signIn: () {
              // Get the current time when the button is clicked
              final currentTime = DateFormat('hh:mm a').format(DateTime.now());

              // Update the state with the check-out time
              setState(() {
                checkInTime = currentTime;
                isCheckedIn = !isCheckedIn;
              });
            },
            text: isCheckedIn
                ? 'Check out'
                : 'Check in', // Change button text dynamically
          ),
          SizedBox(
            height: 20.h,
          ),
          if (!isCheckedIn) // Show the text only if isCheckedIn is false
            SizedBox(
              width: 240.w,
              height: 43.h,
              child: const Text(
                'Please tap the Button to mark your Attendance for today',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff78787B)),
              ),
            ),
        ],
      ),
    );
  }
}
