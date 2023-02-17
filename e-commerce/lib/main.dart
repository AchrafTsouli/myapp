import 'package:flutter/material.dart';
import 'screen/auth/onboardingScreen.dart';
import 'screen/auth/signin.dart';
import 'screen/auth/signup.dart';
import 'screen/home/home_screen.dart';
import 'screen/profile_screen/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce',
      theme: ThemeData(
        fontFamily: 'Muli',
        primarySwatch: Colors.grey,
      ),
      //home: const Signup(),
      initialRoute: "/profile",
      routes: {
        "/signin": (context) => const Signin(),
        "/signup": (context) => const Signup(),
        "/home": (context) => const HomeScreen(),
        "/onboard": (context) => const OnboardingScreen(),
        "/profile": (context) => const ProfileScreen(),
      },
    );
  }
}
