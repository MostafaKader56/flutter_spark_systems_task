import 'package:flutter/material.dart';

import 'features/splash/data/model/on_boarding_data_model.dart';
import 'generated/l10n.dart';

class Config {
  static const Color allOrdersLineColor = Colors.red;
  static const Color orderedOrdersLineColor = Colors.blue;
  static const Color deleiveredOrdersLineColor = Colors.yellow;
  static const Color returnedOrdersLineColor = Colors.green;
  static const Color activeOrdersLineColor = Colors.purple;

  static const splashLodaingGoingToOnBoarding = 4000;
  static const splashLodaingGoingToHome = 3000;
  static const timeToWaitToFadingAniamteWebPage = 1000;
  static const primaryColor = Color(0xFFB72228);
  static const secondaryColor = Color(0xFFFF6F61);
  static const appStatusBarIconsColor = Brightness.light;

  // 📸 Let’s Get Sparkling with Our Onboarding! ✨
  // Each slide has a title, description, and a cool image (don’t forget to add it to 'assets/config/').
  // Want more slides? Keep them coming, they’re dynamic! 🌟
  static List<OnBoardingDataModel> getonBoardingContent() {
    return [
      OnBoardingDataModel(
        title: S.current.onboarding_1_title,
        description: S.current.onboarding_1_description,
        imgLink: "assets/config/onboarding_1.jpeg",
      ),
      OnBoardingDataModel(
        title: S.current.onboarding_2_title,
        description: S.current.onboarding_2_description,
        imgLink: "assets/config/onboarding_2.jpeg",
      ),
      OnBoardingDataModel(
        title: S.current.onboarding_3_title,
        description: S.current.onboarding_3_description,
        imgLink: "assets/config/onboarding_3.jpeg",
      ),
      OnBoardingDataModel(
        title: S.current.onboarding_4_title,
        description: S.current.onboarding_4_description,
        imgLink: "assets/config/onboarding_4.jpeg",
      ),
      OnBoardingDataModel(
        title: S.current.onboarding_5_title,
        description: S.current.onboarding_5_description,
        imgLink: "assets/config/onboarding_5.jpeg",
      ),
    ];
  }
}
