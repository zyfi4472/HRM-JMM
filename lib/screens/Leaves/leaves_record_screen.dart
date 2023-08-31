import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/components/dropdown.dart';
import 'package:hrm/screens/Leaves/leave_list_widget.dart';
import 'package:hrm/screens/Leaves/leaveRequestForm/new_leave_request_form.dart';

class LeavesRecordScreen extends StatelessWidget {
  LeavesRecordScreen({super.key});

  final List<LeavesListWidget> leaveRequestItems = [
    LeavesListWidget(
      title: 'Casual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListWidget(
      title: 'Sick Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListWidget(
      title: 'Casual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Approved',
    ),
    LeavesListWidget(
      title: 'Annual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListWidget(
      title: 'Casual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Rjected',
    ),
    LeavesListWidget(
      title: 'Sick Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListWidget(
      title: 'Casual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Approved',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // final Widget customDrawer = SvgPicture.asset('assets/drawer.svg');
    // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Leaves Record')),
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
              itemCount: leaveRequestItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = leaveRequestItems[index];
                return Column(
                  children: [
                    LeavesListWidget(
                      title: item.title,
                      startDate: item.startDate,
                      endDate: item.endDate,
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
                  _showDialog(context);
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

void _showDialog(BuildContext context) {
  showDialog(
    // barrierColor: Colors.white,
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
                    builder: (context) => const LeaveRequestForm(),
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
                    builder: (context) => const LeaveRequestForm(),
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
                    builder: (context) => const LeaveRequestForm(),
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
                    builder: (context) => const LeaveRequestForm(),
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
