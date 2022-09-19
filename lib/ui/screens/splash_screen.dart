import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app_techidaara/ui/screens/landing_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;

  @override
  void initState() {
    goToLandingScreen();

    super.initState();
  }

  goToLandingScreen() async {
    timer = Timer(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        LandingScreen.routeName,
        (route) => false,
      );
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Image.asset('assets/images/splash.png'),
              const Text(
                'Powered by Weather Api',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
