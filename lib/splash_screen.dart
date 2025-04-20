import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_first_project/Landing_page.dart';

class Splash_screem extends StatefulWidget {
  const Splash_screem({super.key});

  @override
  State<Splash_screem> createState() => _Splash_screemState();
}

class _Splash_screemState extends State<Splash_screem> {
  @override
  void initState() {
    super.initState();

    // Navigate to HomeScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Landing_page()),
      );
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset(
        'assets/images/splash.jpg',
        fit: BoxFit.cover,
      ),
    ]),
    );

  }
}
