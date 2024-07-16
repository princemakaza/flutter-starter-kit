import 'package:fidelity_ui_samples/Helpers/naigationHelper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../Auth/login_page.dart';
import '../Colors/appcolors.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    final AppColors appColors = AppColors();

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 245, 36, 21)),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.only(top: 50),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 5000,
      infiniteAutoScroll: false,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(child: SizedBox()),
      ),
      globalFooter: SizedBox(),
      pages: [
        PageViewModel(
          title: "Fidelity Insurance",
          body:
              "Fidelity Insurance: Unlock your dream home with Vaka Yako housing plan.",
          image: _buildImage('vakayako.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fidelity Insurance",
          body: "Empowering students' dreams with educational loan provisions",
          image: _buildImage('education.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fidelity Insurance",
          body: "Caring for your health with comprehensive medical aid.",
          image: _buildImage('medicalaid.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Fidelity Company",
          body:
              "We invest wisely for thousands of workers, to ensure they enjoy the fruits of their labours.",
          image: _buildImage('investmentplan.png'),
          decoration: pageDecoration.copyWith(
            bodyFlex: 4,
            imageFlex: 4,
          ),
        ),
        PageViewModel(
          title: "Fidelity Company",
          body:
              "Safeguarding your future with reliable and comprehensive life insurance coverage.",
          image: _buildImage('life.png'),
          decoration: pageDecoration.copyWith(
            bodyFlex: 4,
            imageFlex: 4,
          ),
        ),
      ],
      onDone: (){
        Helpers.permanentNavigator(context, LoginPage());
      }, 
      onSkip: (){
        Helpers.permanentNavigator(context, LoginPage());
      }, // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onBackToIntro(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnBoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("This is the screen after Introduction"),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _onBackToIntro(context),
              child: const Text('Back to Introduction'),
            ),
          ],
        ),
      ),
    );
  }
}
