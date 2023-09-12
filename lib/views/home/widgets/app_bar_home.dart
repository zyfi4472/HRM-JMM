import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBarHome({Key? key, required this.scaffoldKey})
      : super(key: key);

  @override
  Size get preferredSize =>
      const Size.fromHeight(163.0); // Specify the preferred height

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 163,
      color: const Color(0xff0F5A8E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTextColumn(),
          _buildBellIcon(),
          _buildDrawerIcon(),
        ],
      ),
    );
  }

// Extracted Widgets

  Column _buildTextColumn() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50, left: 20.0),
          child: Text(
            'Welcome',
            style: TextStyle(color: Color(0xffCECECE)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 20.0),
          child: Text(
            'Huzaifa',
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 20.0),
          child: Text(
            'Glad to see you here',
            style: TextStyle(color: Color(0xffCECECE)),
          ),
        ),
      ],
    );
  }

  Padding _buildBellIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 100),
      child: SvgPicture.asset(
        'assets/bell.svg',
        width: 30,
        height: 30,
      ),
    );
  }

  Padding _buildDrawerIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 70, right: 20.0),
      child: GestureDetector(
        onTap: () {
          scaffoldKey.currentState?.openEndDrawer();
          print('Right drawer is clicked');
        },
        child: SvgPicture.asset(
          'assets/drawer.svg',
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}
