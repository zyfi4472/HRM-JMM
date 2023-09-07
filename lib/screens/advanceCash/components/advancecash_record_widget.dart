import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hrm/constants.dart';
import 'package:hrm/screens/advanceCash/components/advance_request_details.dart';

// ignore: must_be_immutable
class AdvanceCashListWidget extends StatelessWidget {
  AdvanceCashListWidget(
      {super.key,
      required this.amount,
      required this.date,
      required this.status});

 final String amount;
  final String date;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          // Navigate to the LeaveRequestDetails when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AdvanceRequestDetailsScreen(),
            ),
          );
        },
        child: Container(
          width: 330.w,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0XFFFFFFFF),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                blurRadius: 5, // Blur radius
                offset: const Offset(0, 3), // Offset in the (x, y) direction
              ),
            ],
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/wallet.svg',
                height: 20.h,
                // ignore: deprecated_member_use
                color: const Color(0XFF2681C1),
              ),
              SizedBox(width: 20.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    amount,
                    style: kTextStyleTitle,
                  ),
                  Text(
                    date,
                    style: kTextStyleDate,
                  ),
                  SizedBox(width: 10.w),
                ],
              ),
              const Spacer(),
              Text(
                status,
                style: TextStyle(
                  color: status == 'Pending'
                      ? const Color(0XFFF29B19)
                      : status == 'Approved'
                          ? const Color(0XFF64A41A)
                          : const Color(
                              0XFFFF0057), // Default color if status doesn't match any condition
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
