import 'package:flutter/material.dart';

import '../../../../../config.dart';

class SplashScreentBackground extends StatelessWidget {
  const SplashScreentBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Config.secondaryColor,
            Config.primaryColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
