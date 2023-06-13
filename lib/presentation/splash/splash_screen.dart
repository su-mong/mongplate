import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Agne',
              color: Colors.black,
            ),
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                TypewriterAnimatedText(
                  '',
                  speed: const Duration(seconds: 90),
                ),
                TypewriterAnimatedText(
                  'complete flutter boilerplate project',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}