// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Let's Go`
  String get onboarding_start_app {
    return Intl.message(
      'Let\'s Go',
      name: 'onboarding_start_app',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onboarding_start_next {
    return Intl.message(
      'Next',
      name: 'onboarding_start_next',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get other_lang {
    return Intl.message(
      'العربية',
      name: 'other_lang',
      desc: '',
      args: [],
    );
  }

  /// `✨ Welcome to Sparkle Systems Task! 💫`
  String get onboarding_1_title {
    return Intl.message(
      '✨ Welcome to Sparkle Systems Task! 💫',
      name: 'onboarding_1_title',
      desc: '',
      args: [],
    );
  }

  /// `Get ready to dive into the most fun and sparkling task you’ve ever had! 🌟 Let's make data analysis shine and sparkle ✨ like never before! 💼💎`
  String get onboarding_1_description {
    return Intl.message(
      'Get ready to dive into the most fun and sparkling task you’ve ever had! 🌟 Let\'s make data analysis shine and sparkle ✨ like never before! 💼💎',
      name: 'onboarding_1_description',
      desc: '',
      args: [],
    );
  }

  /// `🔍 Unveil Data Secrets! 📊`
  String get onboarding_2_title {
    return Intl.message(
      '🔍 Unveil Data Secrets! 📊',
      name: 'onboarding_2_title',
      desc: '',
      args: [],
    );
  }

  /// `Crunching numbers? 🧮 Yes, please! Dive into the data, group it by months, and watch the magic happen! ✨ Your task just got more fun with every click! 💥💻`
  String get onboarding_2_description {
    return Intl.message(
      'Crunching numbers? 🧮 Yes, please! Dive into the data, group it by months, and watch the magic happen! ✨ Your task just got more fun with every click! 💥💻',
      name: 'onboarding_2_description',
      desc: '',
      args: [],
    );
  }

  /// `📅 Set Up Your Metrics like a Pro! 📈`
  String get onboarding_3_title {
    return Intl.message(
      '📅 Set Up Your Metrics like a Pro! 📈',
      name: 'onboarding_3_title',
      desc: '',
      args: [],
    );
  }

  /// `Get those key metrics ready—total orders, average sales, and returns. 💡 You’re the mastermind behind the numbers! 💪 Let’s make it as smooth as a sparkle! ✨`
  String get onboarding_3_description {
    return Intl.message(
      'Get those key metrics ready—total orders, average sales, and returns. 💡 You’re the mastermind behind the numbers! 💪 Let’s make it as smooth as a sparkle! ✨',
      name: 'onboarding_3_description',
      desc: '',
      args: [],
    );
  }

  /// `⚡ Create a Sparkling Graph! 📉`
  String get onboarding_4_title {
    return Intl.message(
      '⚡ Create a Sparkling Graph! 📉',
      name: 'onboarding_4_title',
      desc: '',
      args: [],
    );
  }

  /// `Show the data like a pro! 📊 Use that graph to visualize the months and orders—let’s get that X and Y axis to dazzle! ✨ A chart with some serious sparkle! ✨`
  String get onboarding_4_description {
    return Intl.message(
      'Show the data like a pro! 📊 Use that graph to visualize the months and orders—let’s get that X and Y axis to dazzle! ✨ A chart with some serious sparkle! ✨',
      name: 'onboarding_4_description',
      desc: '',
      args: [],
    );
  }

  /// `🎉 It’s All About the Sparkle! 💎`
  String get onboarding_5_title {
    return Intl.message(
      '🎉 It’s All About the Sparkle! 💎',
      name: 'onboarding_5_title',
      desc: '',
      args: [],
    );
  }

  /// `Now that you’ve mastered the data, let’s share the sparkle with the world! 🌍 Send it off with pride—because this task? It’s nothing short of a masterpiece! 🏆`
  String get onboarding_5_description {
    return Intl.message(
      'Now that you’ve mastered the data, let’s share the sparkle with the world! 🌍 Send it off with pride—because this task? It’s nothing short of a masterpiece! 🏆',
      name: 'onboarding_5_description',
      desc: '',
      args: [],
    );
  }

  /// `All orders`
  String get all_orders {
    return Intl.message(
      'All orders',
      name: 'all_orders',
      desc: '',
      args: [],
    );
  }

  /// `Active orders`
  String get active_orders {
    return Intl.message(
      'Active orders',
      name: 'active_orders',
      desc: '',
      args: [],
    );
  }

  /// `Ordered orders`
  String get ordered_orders {
    return Intl.message(
      'Ordered orders',
      name: 'ordered_orders',
      desc: '',
      args: [],
    );
  }

  /// `Delivered orders`
  String get delivered_orders {
    return Intl.message(
      'Delivered orders',
      name: 'delivered_orders',
      desc: '',
      args: [],
    );
  }

  /// `Returned orders`
  String get returned_orders {
    return Intl.message(
      'Returned orders',
      name: 'returned_orders',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Order Analytics`
  String get home_title {
    return Intl.message(
      'Order Analytics',
      name: 'home_title',
      desc: '',
      args: [],
    );
  }

  /// `View insights about customer orders`
  String get home_subtitle {
    return Intl.message(
      'View insights about customer orders',
      name: 'home_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Note: the chart is horizentally scrollable.`
  String get home_note {
    return Intl.message(
      'Note: the chart is horizentally scrollable.',
      name: 'home_note',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
