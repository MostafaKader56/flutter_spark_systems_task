import 'package:flutter/material.dart';

import 'widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key, this.curretnPageIndex});

  final int? curretnPageIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: OnBoardingViewBody(
          curretnPageIndex: curretnPageIndex,
        ),
      ),
    );
  }
}
