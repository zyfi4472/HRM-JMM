import 'package:flutter/material.dart';
import 'package:hrm/screens/advanceCash/advance_cash_screen.dart';
import 'package:hrm/components/bottomNavigation/bottom_nav.dart';
import 'package:hrm/components/customDrawer/custom_end_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/screens/Leaves/leaves_record_screen.dart';
import 'package:hrm/screens/attendance/attendance_page_view.dart';
import 'package:hrm/screens/home_screen.dart';

class NavigationPageView extends StatelessWidget {
  const NavigationPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xff0F5A8E)),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),

        textTheme: TextTheme(
          bodyMedium: TextStyle(
              color: Colors.black, // Set your desired default body text color
              fontSize: 18.sp),
        ),
        // primaryColor: Colors.white,
      ),
      home: const MyPageView(),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void _onPageChanged(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          const HomeScreen(),
          const AttendancePageView(),
          LeavesRecordScreen(),
          AdvanceCashScreen(),
        ],
      ),
      // drawer: CustomEndDrawer(
      //   currentIndex: _currentIndex,
      //   onItemTapped: _onItemTapped,
      // ),
      endDrawer: CustomEndDrawer(
        currentIndex: _currentIndex,
        onItemTapped: _onItemTapped,
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _currentIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
