import 'package:flutter/material.dart';
import 'package:hrm/components/bottomNavigation/navigation_page_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home/widgets/my_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0, left: 100),
                      child: Image.asset(
                        'assets/image1.png',
                        width: 70.w,
                        height: 70.h,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0, left: 10),
                      child: Image.asset(
                        'assets/image2.png',
                        width: 130.w,
                        height: 130.h,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h), // Add spacing
                Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 26.sp, // Adjust the font size as needed
                    // You can also set other text style properties here
                  ),
                ),
                SizedBox(height: 10.h), // Add spacing
                Text(
                  'Please log-in to continue',
                  style: TextStyle(
                    color: const Color(0xffA5A5B2),
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp, // Adjust the font size as needed
                    // You can also set other text style properties here
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Email / Username', // Customize the label text
                    ),
                  ),
                ),
                SizedBox(height: 20.h), // Add spacing
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    obscureText:
                        true, // Use this to hide the entered text (e.g., for passwords)
                    decoration: InputDecoration(
                        labelText: 'Password', // Customize the label text
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: const Color(0xff2681C1),
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp, // Adjust the font size as needed
                            decoration: TextDecoration.underline
                            // You can also set other text style properties here
                            ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                MyButton(
                  signIn: () {
                    // Navigate to the DetailsScreen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavigationPageView()),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
