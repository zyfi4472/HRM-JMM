import 'package:flutter/material.dart';
import 'package:hrm/screens/Leaves/request_details_widget.dart';

class LeaveRequestDetails extends StatelessWidget {
  const LeaveRequestDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Request Detail')),
      ),
      body: const RequestDetailsWidget(
        status: 'Pending',
        startDate: '23/05/2022',
        endDate: '23/05/2022',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
      ),
    );
  }
}
