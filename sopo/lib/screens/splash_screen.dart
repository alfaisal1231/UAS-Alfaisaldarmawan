import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sopo/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.asset(
                'asset/splash_animation.json', // Replace with the path to your Lottie JSON file
                width: 400, // Adjust the width and height as needed
                height: 400,
                repeat: true, // Set to true if you want the animation to loop
              ),
            ),
          ],
        ),
      ),
    );
  }
}