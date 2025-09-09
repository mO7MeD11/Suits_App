import 'package:flutter/material.dart';
import 'package:suits_app/views/onboarding/onboarding_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) {
            return Onboardingscreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDD8560),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Group 21.png'),
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Text(
                'suits',
                style: TextStyle(
                  fontFamily: 'Waterfall',
                  fontSize: 128,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
