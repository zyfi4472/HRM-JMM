import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/screens/Leaves/leaveRequestForm/calendar_container.dart';

class RequestFormWidget extends StatefulWidget {
  const RequestFormWidget({
    Key? key,
    this.description,
  }) : super(key: key);

  final String? description;

  @override
  // ignore: library_private_types_in_public_api
  _RequestFormWidgetState createState() => _RequestFormWidgetState();
}

class _RequestFormWidgetState extends State<RequestFormWidget> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now(); // Separate variable for the "To" date

  Future<void> _selectFromDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: fromDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != fromDate) {
      setState(() {
        fromDate = picked;
      });
    }
  }

  Future<void> _selectToDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: toDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != toDate) {
      setState(() {
        toDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'From',
              style: TextStyle(
                color: const Color(0XFF989898),
                fontSize: 14.sp,
              ),
            ),
            TextButton(
              onPressed: () {
                _selectFromDate(context);
              },
              child: CalenderContainerWidget(selectedDate: fromDate),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'To',
              style: TextStyle(
                color: const Color(0XFF989898),
                fontSize: 14.sp,
              ),
            ),
            TextButton(
              onPressed: () {
                _selectToDate(context);
              },
              child: CalenderContainerWidget(selectedDate: toDate),
            ),
            SizedBox(
              height: 50.h,
            ),
            Text(
              'Description',
              style: TextStyle(
                color: const Color(0XFF989898),
                fontSize: 14.sp,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              width: 290.w,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Type Here..',
                ),
                maxLines: 7, // Allow any number of lines
              ),
            ),
            SizedBox(
              height: 120.h,
            ),
            SizedBox(
              height: 40.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _requestSentDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                      0XFF2681C1), // Change this color to the desired color
                ),
                child: const Text('Send Request'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _requestSentDialog(BuildContext context) {
  showDialog(
    // barrierColor: Colors.white,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 40.0.w,
                  height: 40.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0XFF64A41A), // Circle outline color
                      width: 3.0.w,
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    color: const Color(0XFF64A41A), // Tick color
                    size: 30.0.sp,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            const Text(
              'Request Sent',
              style: TextStyle(
                color: Color(0XFF64A41A),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              'Your request has been sent to Admin',
              style: TextStyle(color: const Color(0XFF78787B), fontSize: 14.sp),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: 100.w,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                        0XFF64A41A), // Change this color to the desired color
                  ),
                  child: const Text('Done')),
            )
          ],
        ),
      );
    },
  );
}
