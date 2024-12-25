import 'package:carpon_footprint/Core/app_theme.dart';
import 'package:carpon_footprint/UI/Home/home_screan.dart';
import 'package:carpon_footprint/UI/Sign%20In/sign_in_screan.dart';
import 'package:carpon_footprint/UI/Sign%20Up/sign_up_screan.dart';
import 'package:carpon_footprint/UI/Splash/splash.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.routeName: (_) => const HomePage(),
        SignInPage.routeName: (_) => SignInPage(),
        SignUpPage.routeName: (_) => SignUpPage(),
        SplashScrean.routeName: (_) => const SplashScrean()
      },
      initialRoute: SplashScrean.routeName,
      theme: AppTheme.mainTheme,
    );
  }
}
