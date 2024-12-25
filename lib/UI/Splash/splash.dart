import 'package:carpon_footprint/UI/Sign%20In/sign_in_screan.dart';
import 'package:flutter/material.dart';

class SplashScrean extends StatelessWidget {
  static const String routeName = "/splash";
  const SplashScrean({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, SignInPage.routeName);
      },
    );
    return Container(
      color: Colors.white,
      child: Image.asset(
        "assets/images/logo.png",
      ),
    );
  }
}
