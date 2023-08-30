import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/constants.dart';

class AdvanceRequestDetailsWidget extends StatelessWidget {
  const AdvanceRequestDetailsWidget({
    super.key,
    required this.status,
    required this.date,
    required this.amount,
    this.description,
  });

  final String status;
  final String date;
  final String amount;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Date',
                style: TextStyle(
                  color: const Color(0XFF989898),
                  fontSize: 14.sp,
                ),
              ),
              const Spacer(),
              Text(
                status,
                style: TextStyle(
                  color: status == 'Pending'
                      ? const Color(0XFFF29B19)
                      : status == 'Approved'
                          ? const Color(0XFF64A41A)
                          : const Color(0XFFFF0057),
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              date,
              style: kRequestDetails,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Amount',
            style: TextStyle(
              color: const Color(0XFF989898),
              fontSize: 14.sp,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              amount,
              style: kRequestDetails,
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Comment',
            style: TextStyle(
              color: const Color(0XFF989898),
              fontSize: 14.sp,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            width: 290.w,
            child: Text(
              description ?? '',
              style: kRequestDetails,
            ),
          ),
          SizedBox(height: 50.h),
          SizedBox(
            height: 40.h,
            width: 150.w,
            child: ElevatedButton(
              onPressed: () {
                // _requestSentDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                    0XFF2681C1), // Change this color to the desired color
              ),
              child: const Text('Vie Vouncher'),
            ),
          ),
        ],
      ),
    );
  }
}
