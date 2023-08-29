import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

// ignore: must_be_immutable
class NavItem extends StatelessWidget {
  NavItem({
    super.key,
    required this.NavTitle,
    required this.svgImagePath,
    // required this.destinationRoute,
    this.isUsedInDrawer = false,
    required this.onTap,
  });

  String NavTitle;
  String svgImagePath;
  // final String destinationRoute;
  final bool isUsedInDrawer;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: isUsedInDrawer // Check if used in drawer
            ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  // Use column layout for drawer
                  children: [
                    SvgPicture.asset(
                      svgImagePath,
                      height: 20.h,
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      NavTitle,
                      style: kDrawerNavTitle,
                    ),
                  ],
                ),
              )
            : Column(
                // Use existing layout
                children: [
                  SvgPicture.asset(
                    svgImagePath,
                    // height: 20.h,
                  ),
                  SizedBox(height: 10),
                  Text(
                    NavTitle,
                    style: kBottomNavTitle,
                  ),
                ],
              ),
      ),
    );
  }
}
