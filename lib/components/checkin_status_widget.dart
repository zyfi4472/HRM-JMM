import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckInStatusWidget extends StatelessWidget {
  final bool isCheckedIn;
  final String? checkInTime;

  CheckInStatusWidget({
    super.key,
    required this.isCheckedIn,
    required this.checkInTime,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, right: 20.0),
        child: isCheckedIn
            ? SvgPicture.asset(
                'assets/checked-in.svg', // Replace with your SVG asset path
                width: 60,
                height: 60,
              )
            : const Icon(
                Icons.login_outlined,
                color: Colors.blue,
                size: 100,
              ),
      ),
    );
  }
}
