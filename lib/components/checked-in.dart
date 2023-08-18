import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'my_button.dart'; // Import the intl package for DateFormat

class CheckedIn extends StatefulWidget {
  const CheckedIn({Key? key}) : super(key: key);

  @override
  _CheckedInState createState() => _CheckedInState();
}

class _CheckedInState extends State<CheckedIn> {
  String? checkOutTime; // Store the check-out time

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
          const SizedBox(height: 80),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(),
              child: SvgPicture.asset(
                'assets/checked-in.svg', // Replace with your SVG asset path
                width: 60,
                height: 60,
              ), //
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Attendance marked',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff0F5A8E),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(height: 15),
          const Text(
            'Here is the time when you checked in',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff78787B),
            ),
          ),

          const SizedBox(height: 40),
          // Display the check-out time if it's available
          if (checkOutTime != null)
            Text(
              ' $checkOutTime',
              style: const TextStyle(color: Color(0xff2681C1), fontSize: 18),
            ),
          const SizedBox(height: 150),

          MyButton(
            signIn: () {
              // Get the current time when the button is clicked
              final currentTime = DateFormat('hh:mm a').format(DateTime.now());

              // Update the state with the check-out time
              setState(() {
                checkOutTime = currentTime;
              });
            },
            text: 'Check out',
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
