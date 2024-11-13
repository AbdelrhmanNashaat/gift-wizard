import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gift_planner/constant.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Animate(
            autoPlay: true,
            effects: [
              SlideEffect(duration: 900.ms),
            ],
            child: Image.asset(
              'assets/images/surprise.png',
              width: size.width * 0.7,
            ),
          ),
          const SizedBox(height: 20),
          Animate(
            autoPlay: true,
            effects: [
              FadeEffect(duration: 1100.ms),
            ],
            onComplete: (controller) {},
            child: const Text(
              'Gift Wizard',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Constant.stringColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
