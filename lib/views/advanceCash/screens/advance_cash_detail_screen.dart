import 'package:flutter/material.dart';
import 'package:hrm/views/advanceCash/widgets/advance_request_details_widget.dart';

class AdvanceCashDetailScreen extends StatelessWidget {
  const AdvanceCashDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Request Detail')),
      ),
      body: const AdvanceRequestDetailsWidget(
        status: 'Pending',
        date: '23/05/2022',
        amount: '1300',
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
      ),
    );
  }
}
