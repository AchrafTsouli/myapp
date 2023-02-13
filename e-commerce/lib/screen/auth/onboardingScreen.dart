import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "TOKOTO",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Secular",
                        fontSize: 50,
                        color: Colors.deepOrangeAccent),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Muli",
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      Text(
                        'TOKOTO',
                        style: TextStyle(
                            color: Color.fromARGB(255, 71, 71, 71),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' .Let\'s shop!',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Image.asset(
                      "assets/images/splash_1.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 20,
                        height: 6,
                        //color: Colors.deepOrangeAccent,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.deepOrangeAccent),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Container(
                        width: 8,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                        //color: Color.fromARGB(255, 8, 142, 160),
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      Container(
                        width: 8,
                        height: 6,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey),
                        //color: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  TextButton(
                    onPressed: () => afficher(context),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Muli"),
                    ),
                    style: TextButton.styleFrom(
                        //textStyle:
                        //TextStyle(fontSize: 60, fontWeight: FontWeight.w600),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.deepOrangeAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 110, vertical: 15)),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  void afficher(context) {
    Navigator.pushNamed(context, "/signin");
  }
}
