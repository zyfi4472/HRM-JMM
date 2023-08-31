import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: Row(
              children: [
                NavItem(
                  navTitle: 'Home',
                  svgImagePath: 'assets/home.svg',
                  onTap: () => onItemTapped(0),
                ),
                NavItem(
                  navTitle: 'Attendance Record',
                  svgImagePath: 'assets/apps-sort.svg',
                  onTap: () => onItemTapped(1),
                ),
                NavItem(
                  navTitle: 'Leaves',
                  svgImagePath: 'assets/copy.svg',
                  onTap: () => onItemTapped(2),
                ),
                NavItem(
                  navTitle: 'Advance Cash',
                  svgImagePath: 'assets/wallet.svg',
                  onTap: () => onItemTapped(3),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
