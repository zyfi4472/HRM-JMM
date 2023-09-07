import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/components/bottomNavigation/components/bottom_nav_item.dart';

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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100.h,
              child: const Center(
                child: Text('Main Menu'),
              ),
            ),
            NavItem(
              navTitle: 'Home',
              svgImagePath: 'assets/home.svg',
              onTap: () => onItemTapped(0),
              selected: currentIndex == 0,
              isUsedInDrawer: true,
              // destinationRoute: '/home',
            ),
            NavItem(
              navTitle: 'Attendance Record',
              svgImagePath: 'assets/apps-sort.svg',
              onTap: () => onItemTapped(1),
              selected: currentIndex == 1,
              isUsedInDrawer: true,
            ),
            NavItem(
              navTitle: 'Leaves',
              svgImagePath: 'assets/copy.svg',
              onTap: () => onItemTapped(2),
              selected: currentIndex == 2,
              isUsedInDrawer: true,
            ),
            NavItem(
              navTitle: 'Advance Cash',
              svgImagePath: 'assets/wallet.svg',
              onTap: () => onItemTapped(3),
              selected: currentIndex == 3,
              isUsedInDrawer: true,
            ),
            SizedBox(height: 30.h),
            NavItem(
              navTitle: 'Pay Slip',
              svgImagePath: 'assets/receipt.svg',
              // destinationRoute: '/leaves',
              isUsedInDrawer: true,
              onTap: () => onItemTapped(3),
              selected: currentIndex == 3,
            ),
          ],
        ),
      ),
    );
  }
}
