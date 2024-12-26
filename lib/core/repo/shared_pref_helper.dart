import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class SharedPrefsHelper {
  static late final SharedPreferences prefs;
  static bool _isPrefInitialized = false;

  static Future<void> init() async {
    if (_isPrefInitialized) {
      return;
    }
    prefs = await SharedPreferences.getInstance().then(
      (value) {
        _isPrefInitialized = true;
        return value;
      },
    );
  }

  static const String _isOnBoardingViewed = '_isOnBoardingViewed';
  static const String _langSuffixKey = '_langSuffixKey';

  static Future<void> setIsOnBoardingViewed() async {
    await prefs.setBool(_isOnBoardingViewed, true);
  }

  static bool getIsOnBoardingViewed() {
    return prefs.getBool(_isOnBoardingViewed) ?? false;
  }

  static String getLangSuffix() {
    return prefs.getString(_langSuffixKey) ??
        Intl.shortLocale(Platform.localeName);
  }

  static setLangSuffix(String value) {
    return prefs.setString(_langSuffixKey, value);
  }
}
