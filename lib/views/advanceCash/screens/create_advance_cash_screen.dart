import 'package:flutter/material.dart';

import '../widgets/advance_request_form_widget.dart';

class CreateAdvanceCashScreen extends StatelessWidget {
  const CreateAdvanceCashScreen({super.key});

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
