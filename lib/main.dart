import 'package:flutter/material.dart';
import 'package:hrm/components/checked-in.dart';
import './components/splash_screen.dart';
import 'components/home_screen.dart';
import 'components/my_button.dart'; // Import the SplashScreen component

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home:
          const SplashScreen(), // Use the SplashScreen component as the home screen
    );
  }
}

// MyHomePage class remains the same as before...

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 100),
            child: Image.asset(
              'assets/image1.png',
              width: 70,
              height: 70,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 10),
            child: Image.asset(
              'assets/image2.png',
              width: 130,
              height: 130,
            ),
          ),
        ],
      ),

      const SizedBox(height: 30), // Add spacing

      const Text(
        'Login',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 26, // Adjust the font size as needed
          // You can also set other text style properties here
        ),
      ),

      const SizedBox(height: 10), // Add spacing

      const Text(
        'Please log-in to continue',
        style: TextStyle(
          color: Color(0xffA5A5B2),
          fontWeight: FontWeight.w400,
          fontSize: 18, // Adjust the font size as needed
          // You can also set other text style properties here
        ),
      ),
      const SizedBox(
        height: 80,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Email / Username', // Customize the label text
          ),
        ),
      ),
      const SizedBox(height: 20), // Add spacing
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
      const SizedBox(height: 20),

      const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              'Forgot Password',
              style: TextStyle(
                  color: Color(0xff2681C1),
                  fontWeight: FontWeight.w400,
                  fontSize: 18, // Adjust the font size as needed
                  decoration: TextDecoration.underline
                  // You can also set other text style properties here
                  ),
            ),
          )
        ],
      ),
      const SizedBox(height: 20),
      MyButton(
        signIn: () {
          // Navigate to the DetailsScreen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailsScreen()),
          );
        },
      ),
    ]));
  }
}
