import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_spark_task/main.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../config.dart';
import '../repo/shared_pref_helper.dart';
import 'app_router.dart';

class Functions {
  static void pushReplacement(String pageId, {Object? extra}) {
    GoRouter.of(AppRouter.navigatorKey.currentState!.context).pushReplacement(
      pageId,
      extra: extra,
    );
  }

  static void pop() {
    GoRouter.of(AppRouter.navigatorKey.currentState!.context).pop();
  }

  static void push(String pageId) {
    GoRouter.of(AppRouter.navigatorKey.currentState!.context).push(pageId);
  }

  static String getCurrentUtcTimestampString() {
    return DateTime.now().toUtc().toIso8601String();
  }

  static int getCurrentUtcTimestamp() {
    return DateTime.now().toUtc().millisecondsSinceEpoch;
  }

  static void printLogs(dynamic value) {
    log(value.toString());
  }

  static String capitalizeFirstWord(String text) {
    text = text.trim();
    return text.isNotEmpty
        ? text[0].toUpperCase() + text.substring(1).toLowerCase()
        : text;
  }

  static showSnack({
    required String text,
    String? btnText,
    VoidCallback? onPressed,
    int duration = 2,
  }) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        SnackBarAction? action;
        if (btnText != null) {
          action = SnackBarAction(
            label: btnText,
            onPressed: onPressed ?? () {},
            textColor: Colors.white,
          );
        }
        ScaffoldMessenger.of(AppRouter.navigatorKey.currentState!.context)
            .showSnackBar(
          SnackBar(
            content: Text(text),
            duration: Duration(seconds: duration),
            backgroundColor: Config.primaryColor,
            action: action,
          ),
        );
      },
    );
  }

  static Locale getLocale() {
    return Locale(
      SharedPrefsHelper.getLangSuffix(),
      '',
    );
  }

  static bool isArabic() {
    return Intl.getCurrentLocale() == 'ar';
  }

  static String getCurrentLocaleSuffix() {
    return Intl.getCurrentLocale();
  }

  static void changeLocale() {
    final localeSuffix = getCurrentLocaleSuffix() == 'ar' ? 'en' : 'ar';
    SharedPrefsHelper.setLangSuffix(localeSuffix);
    MainApp.setLocale(
      AppRouter.navigatorKey.currentState!.context,
      Locale(
        localeSuffix,
        '',
      ),
    );
  }
}
