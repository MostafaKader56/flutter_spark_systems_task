import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../../core/utils/functions.dart';
import 'splash_screent_background.dart';

import '../../../../../config.dart';
import '../../../../../core/repo/shared_pref_helper.dart';
import '../../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    if (SharedPrefsHelper.getIsOnBoardingViewed()) {
      Future.delayed(
        const Duration(milliseconds: Config.splashLodaingGoingToHome),
        () {
          Functions.pushReplacement(AppRouter.kHomeView);
        },
      );
    } else {
      Future.delayed(
        const Duration(milliseconds: Config.splashLodaingGoingToOnBoarding),
        () {
          Functions.pushReplacement(AppRouter.kOnBoardingView);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SplashScreentBackground(),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/splash_icon.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 30),
              const SpinKitCubeGrid(
                color: Colors.white,
                size: 40.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
