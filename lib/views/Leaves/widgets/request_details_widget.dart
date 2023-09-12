import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/constants.dart';

class RequestDetailsWidget extends StatelessWidget {
  const RequestDetailsWidget(
      {super.key,
      required this.status,
      required this.startDate,
      required this.endDate,
      this.description});

  final String status;
  final String startDate;
  final String endDate;
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
                'From',
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
              startDate,
              style: kRequestDetails,
            ),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              endDate,
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
        ],
      ),
    );
  }
}
