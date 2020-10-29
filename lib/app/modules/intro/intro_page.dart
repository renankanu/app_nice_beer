import 'package:app_nice_beer/app/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.pushReplacementNamed(context, '/home');
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/images/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Details of your beer",
          body:
              "You will find details of your beer like: abv, ibu, ebc, srm, ph etc.",
          image: _buildImage('intro_one'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Combination with food",
          body:
              "You will know the suggestion of food to taste with your favorite beer.",
          image: _buildImage('intro_two'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Used ingredients",
          body:
              "You will know what ingredients are used in beer and how it is prepared.",
          image: _buildImage('intro_three'),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: Image.asset(
        'assets/icons/arrowRight.png',
        height: 18,
      ),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: CustomColors.emerald80,
        activeColor: CustomColors.emerald,
        activeSize: Size(44.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
