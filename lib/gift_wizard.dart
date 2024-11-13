import 'package:flutter/material.dart';
import 'constant.dart';
import 'views/splash_view.dart';

class GiftWizard extends StatelessWidget {
  const GiftWizard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Constant.scaffoldBackgroundColor,
        iconTheme: const IconThemeData(color: Constant.iconsColor),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Constant.stringColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'ARIAL',
          ),
          displayMedium: TextStyle(
            color: Constant.stringColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontFamily: 'ARIAL',
          ),
        ),
      ),
      home: const SplashView(),
    );
  }
}
