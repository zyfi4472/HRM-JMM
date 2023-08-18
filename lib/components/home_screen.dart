import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart'; // Import the intl package for DateFormat
import 'package:hrm/components/my_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String? checkInTime; // Store the check-in time
  bool isCheckedIn = false; // Track if user is checked in

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 163,
            color: const Color(0xff0F5A8E),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 20.0),
                      child: Text(
                        'Welcome',
                        style: TextStyle(color: Color(0xffCECECE)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        'Huzaifa',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20.0),
                      child: Text(
                        'Glad to see you here',
                        style: TextStyle(color: Color(0xffCECECE)),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 100),
                  child: SvgPicture.asset(
                    'assets/bell.svg', // Replace with your SVG asset path
                    width: 30,
                    height: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, right: 20.0),
                  child: SvgPicture.asset(
                    'assets/drawer.svg', // Replace with your SVG asset path
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 70, right: 20.0),
              child: isCheckedIn
                  ? SvgPicture.asset(
                      'assets/checked-in.svg', // Replace with your SVG asset path
                      width: 60,
                      height: 60,
                    )
                  : const Icon(
                      Icons.login_outlined,
                      size: 100,
                    ),
            ),
          ),
          const SizedBox(height: 20),
          if (isCheckedIn) // Show the text only if isCheckedIn is false
            const SizedBox(
              width: 240,
              height: 43,
              child: Text(
                'Here is the time when you checked in',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff78787B)),
              ),
            ),
          // const SizedBox(height: 10),
          if (checkInTime != null && isCheckedIn)
            Text(
              'Check-in Time: $checkInTime',
              style: const TextStyle(color: Color(0xff2681C1), fontSize: 18),
            ),
          const SizedBox(height: 150),
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
          const SizedBox(
            height: 20,
          ),
          if (!isCheckedIn) // Show the text only if isCheckedIn is false
            const SizedBox(
              width: 240,
              height: 43,
              child: Text(
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
