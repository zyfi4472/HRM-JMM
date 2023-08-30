import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDropdownWidget extends StatefulWidget {
  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  String selectedValue = 'November'; // Initialize with a valid option
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0XFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Shadow color
              // spreadRadius: 2, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3), // Offset in the (x, y) direction
            ),
          ],
        ),
        width: 110.w,
        height: 30.h,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButton<String>(
            value: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            items: const [
              DropdownMenuItem(
                value: 'January',
                child: Text(
                  'January',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'February',
                child: Text(
                  'February',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'March',
                child: Text(
                  'March',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'April',
                child: Text(
                  'April',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'May',
                child: Text(
                  'May',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'June',
                child: Text(
                  'June',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'July',
                child: Text(
                  'July',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'August',
                child: Text(
                  'August',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'September',
                child: Text(
                  'September',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'October',
                child: Text(
                  'October',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'November',
                child: Text(
                  'November',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              DropdownMenuItem(
                value: 'December',
                child: Text(
                  'December',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ), // Icon to display
            underline: Container(), // Remove the underline
            isExpanded: true, // Allow the dropdown to expand horizontally
            dropdownColor: Colors.white, // Change this color
          ),
        ),
      ),
    );
  }
}
