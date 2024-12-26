import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/main/presentation/manager/orders_cubit/orders_cubit.dart';
import '../../features/main/presentation/view/home_view.dart';
import '../../features/splash/presentation/view/on_boarding_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/kOnBoardingView';
  static const kHomeView = '/kHomeView';

  static final Duration _animationDuration = const Duration(milliseconds: 500);
  static final navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: _animationDuration,
            key: state.pageKey,
            child: const SplashView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(
                  curve: Curves.easeInOutCirc,
                ).animate(
                  animation,
                ),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: kOnBoardingView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: _animationDuration,
            key: state.pageKey,
            child: OnBoardingView(
              curretnPageIndex: int.tryParse(
                state.extra.toString(),
              ),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(
                  curve: Curves.easeInOutCirc,
                ).animate(
                  animation,
                ),
                child: child,
              );
            },
          );
        },
      ),
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            transitionDuration: _animationDuration,
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => OrdersCubit()..fetchOrders(),
              child: const HomeView(),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(
                  curve: Curves.easeInOutCirc,
                ).animate(
                  animation,
                ),
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
