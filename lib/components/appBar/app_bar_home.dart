import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarHome extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBarHome({super.key, required this.scaffoldKey});

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
          const Column(
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
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.w700),
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 100),
            child: SvgPicture.asset(
              'assets/bell.svg',
              width: 30,
              height: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, right: 20.0),
            child: GestureDetector(
              onTap: () => {
                scaffoldKey.currentState?.openEndDrawer(),
                // ignore: avoid_print
                print('Right drawer is clicked'),
              },
              child: SvgPicture.asset(
                'assets/drawer.svg',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
