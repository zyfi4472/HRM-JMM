import 'package:flutter/material.dart';
import 'package:hrm/screens/advanceCash/advance_request_form_widget.dart';

class AdvanceRequestForm extends StatelessWidget {
  const AdvanceRequestForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F5A8E),
        title: const Center(
          child: Text('Leave Request Details'),
        ),
      ),
      body: const AdvanceRequestFormWidget(),
    );
  }
}