import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/components/dropdown.dart';
import 'package:hrm/screens/Leaves/leave_list_item.dart';

class LeavesScreen extends StatelessWidget {
  LeavesScreen({super.key});

  final List<LeavesListItem> leaveRequestItems = [
    LeavesListItem(
      title: 'Casual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListItem(
      title: 'Sick Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListItem(
      title: 'Casual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Approved',
    ),
    LeavesListItem(
      title: 'Annual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListItem(
      title: 'Casual Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Rjected',
    ),
    LeavesListItem(
      title: 'Sick Leave',
      startDate: '23/05/2022',
      endDate: '23/05/2022',
      status: 'Pending',
    ),
    LeavesListItem(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
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
                    LeavesListItem(
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
          // DateDropdown(),
        ],
      ),
    );
  }
}
