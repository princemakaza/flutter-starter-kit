import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../OnBoarding/onbarding.dart';
import 'firstPage.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 2000,
        splashIconSize: double.maxFinite,
        splash: WelcomePage(),
        //  Lottie.asset('animations/loading.json'),
        nextScreen: OnBoardingPage(),
        splashTransition: SplashTransition.slideTransition,
      ),
    );
  }
}