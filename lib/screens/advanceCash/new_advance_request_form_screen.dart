import 'package:flutter/material.dart';

import 'components/advance_request_form_widget.dart';

class AdvanceRequestFormScreen extends StatelessWidget {
  const AdvanceRequestFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0F5A8E),
        title: const Center(
          child: Text('New Request'),
        ),
      ),
      body: const AdvanceRequestFormWidget(),
    );
  }
}
