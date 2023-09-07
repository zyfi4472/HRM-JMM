import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/components/dropdown/dropdown.dart';
import 'package:hrm/screens/advanceCash/components/advancecash_record_widget.dart';

import 'new_advance_request_form_screen.dart';

class AdvanceCashScreen extends StatelessWidget {
  AdvanceCashScreen({super.key});
  final List<AdvanceCashListWidget> advanceCash = [
    AdvanceCashListWidget(
      amount: '500 SAR',
      date: '23/05/2022',
      status: 'Pending',
    ),
    AdvanceCashListWidget(
      amount: '1300 SAR',
      date: '23/05/2022',
      status: 'Pending',
    ),
    AdvanceCashListWidget(
      amount: '500 SAR',
      date: '23/05/2022',
      status: 'Approved',
    ),
    AdvanceCashListWidget(
      amount: '400 SAR',
      date: '23/05/2022',
      status: 'Pending',
    ),
    AdvanceCashListWidget(
      amount: '700 SAR',
      date: '23/05/2022',
      status: 'Rejected',
    ),
    AdvanceCashListWidget(
      amount: '550 SAR',
      date: '23/05/2022',
      status: 'Pending',
    ),
    AdvanceCashListWidget(
      amount: '500 SAR',
      date: '23/05/2022',
      status: 'Approved',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Advance Cash')),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            alignment: Alignment.centerLeft,
            color: const Color(0XFFF9F9F9),
            height: 50.h,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Showing all records',
                  style: TextStyle(fontSize: 16),
                ),
                MyDropdownWidget(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: advanceCash.length,
              itemBuilder: (BuildContext context, int index) {
                final item = advanceCash[index];
                return Column(
                  children: [
                    AdvanceCashListWidget(
                      amount: item.amount,
                      date: item.date,
                      status: item.status,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FloatingActionButton(
                backgroundColor: const Color(0XFF2681C1),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AdvanceRequestFormScreen(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
