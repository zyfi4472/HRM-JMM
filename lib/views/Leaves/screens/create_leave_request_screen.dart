import 'package:flutter/material.dart';

import '../widgets/leave_request_form_widget.dart';


class CreateLeaveRequestScreen extends StatelessWidget {
  const CreateLeaveRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F5A8E),
        title: const Center(
          child: Text('Leave Request Details'),
        ),
      ),
      body: const LeaveRequestFormWidget(),
    );
  }
}
