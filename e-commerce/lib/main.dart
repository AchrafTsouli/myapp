import 'package:flutter/material.dart';

import 'screen/auth/home/Homescreen.dart';
import 'screen/auth/onboardingScreen.dart';
import 'screen/auth/signin.dart';
import 'screen/auth/signup.dart';

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
        primarySwatch: Colors.grey,
      ),
      //home: const Signup(),
      initialRoute: "/onboard",
      routes: {
        "/signin": (context) => const Signin(),
        "/signup": (context) => const Signup(),
        "/home": (context) => const Homescreen(),
        "/onboard": (context) => const OnboardingScreen(),
      },
    );
  }
}
