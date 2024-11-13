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
      ),
      home: const SplashView(),
    );
  }
}
