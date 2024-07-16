import 'package:flutter/material.dart';

import '../../Global/fade_in.dart';
import '../Colors/appcolors.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final appColors = AppColors();


  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            height: 400,
            width: 300,
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white.withOpacity(0),Colors.white.withOpacity(0), Colors.white.withOpacity(0), appColors.redAccent.withOpacity(0.6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            FadeInSlide(
              duration: 2.2,
              child: Text(
                'Welcome to Fidelity Mobile App',
                style: TextStyle(
                  color: appColors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}