import 'package:flutter/material.dart';

import '../screens/create_leave_request_screen.dart';


class LeaveTypeDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text(
            'Leave type',
            style: TextStyle(color: Color(0XFF141433)),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Please select leave type for which you want to apply',
                style: TextStyle(
                  color: Color(0XFF78787B),
                  fontSize: 12,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateLeaveRequestScreen(),
                    ),
                  );
                },
                child: const Text('Casual Leave'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateLeaveRequestScreen(),
                    ),
                  );
                },
                child: const Text('Annual Leave'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateLeaveRequestScreen(),
                    ),
                  );
                },
                child: const Text('Sick Leave'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateLeaveRequestScreen(),
                    ),
                  );
                },
                child: const Text('Others'),
              ),
            ],
          ),
        );
      },
    );
  }
}
