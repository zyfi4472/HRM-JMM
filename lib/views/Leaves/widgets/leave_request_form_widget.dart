import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'calendar_container.dart';

class LeaveRequestFormWidget extends StatefulWidget {
  const LeaveRequestFormWidget({
    Key? key,
    this.description,
  }) : super(key: key);

  final String? description;

  @override
  // ignore: library_private_types_in_public_api
  _LeaveRequestFormWidgetState createState() => _LeaveRequestFormWidgetState();
}

class _LeaveRequestFormWidgetState extends State<LeaveRequestFormWidget> {
  DateTime fromDate = DateTime.now();
  DateTime toDate = DateTime.now(); // Separate variable for the "To" date

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildLabel('From'),
            _buildDateButton(
                onPressed: () => _selectFromDate(context),
                selectedDate: fromDate),
            SizedBox(height: 50.h),
            _buildLabel('To'),
            _buildDateButton(
                onPressed: () => _selectToDate(context), selectedDate: toDate),
            SizedBox(height: 50.h),
            _buildLabel('Description'),
            _buildDescriptionTextField(),
            SizedBox(height: 120.h),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

// Seperated widgets

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0XFF989898),
        fontSize: 14.sp,
      ),
    );
  }

  Widget _buildDateButton(
      {required VoidCallback onPressed, required DateTime selectedDate}) {
    return TextButton(
      onPressed: onPressed,
      child: CalenderContainerWidget(selectedDate: selectedDate),
    );
  }

  Widget _buildDescriptionTextField() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: 290.w,
      child: const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Type Here..',
        ),
        maxLines: 7,
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _requestSentDialog(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF2681C1),
        ),
        child: const Text('Send Request'),
      ),
    );
  }

  void _requestSentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCheckMark(),
              SizedBox(height: 10.h),
              const Text(
                'Request Sent',
                style: TextStyle(
                  color: Color(0XFF64A41A),
                ),
              ),
              SizedBox(height: 10.h),
              _buildRequestSentText(),
              SizedBox(height: 10.h),
              _buildDoneButton(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCheckMark() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 40.0.w,
          height: 40.0.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0XFF64A41A),
              width: 3.0.w,
            ),
          ),
          child: Icon(
            Icons.check,
            color: const Color(0XFF64A41A),
            size: 30.0.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildRequestSentText() {
    return Text(
      'Your request has been sent to Admin',
      style: TextStyle(color: const Color(0XFF78787B), fontSize: 14.sp),
    );
  }

  Widget _buildDoneButton() {
    return SizedBox(
      width: 100.w,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF64A41A),
        ),
        child: const Text('Done'),
      ),
    );
  }

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
}
