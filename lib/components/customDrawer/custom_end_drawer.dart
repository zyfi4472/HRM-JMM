import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/components/bottomNavigation/bottom_nav_item.dart';

class CustomEndDrawer extends StatelessWidget {
  const CustomEndDrawer({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF0F5A8E),
      // height: 300.h,
      width: 200.w,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: ListView(
          children: [
            SizedBox(
              height: 100.h,
              child: const Center(
                child: Text('Main Menu'),
              ),
            ),
            NavItem(
              NavTitle: 'Home',
              svgImagePath: 'assets/home.svg',
              onTap: () => onItemTapped(0),

              // destinationRoute: '/home',
            ),
            NavItem(
              NavTitle: 'Attendance Record',
              svgImagePath: 'assets/apps-sort.svg',
              onTap: () => onItemTapped(1),

              // destinationRoute: '/attendanceRecord',
            ),
            NavItem(
              NavTitle: 'Leaves',
              svgImagePath: 'assets/copy.svg',
              onTap: () => onItemTapped(2),

              // destinationRoute: '/leaves',
            ),
            NavItem(
              NavTitle: 'Advance Cash',
              svgImagePath: 'assets/wallet.svg',
              onTap: () => onItemTapped(3),

              // destinationRoute: '/leaves',
            ),
            SizedBox(height: 30.h),
            // NavItem(
            //   NavTitle: 'Pay Slip',
            //   svgImagePath: 'assets/receipt.svg',
            //   // destinationRoute: '/leaves',
            //   isUsedInDrawer: true,
            // ),
          ],
        ),
      ),
    );
  }
}
