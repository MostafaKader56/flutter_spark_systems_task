import 'package:flutter/material.dart';

import '../../../../../config.dart';
import '../../../../../core/repo/shared_pref_helper.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/functions.dart';
import '../../../../../generated/l10n.dart';
import '../../../data/model/on_boarding_data_model.dart';
import 'on_boarding_slide.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({
    super.key,
    this.curretnPageIndex,
  });

  final int? curretnPageIndex;

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late List<OnBoardingDataModel> onBoardingContent;

  late int currentIndex;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.curretnPageIndex != null) {
      currentIndex = widget.curretnPageIndex!;
    } else {
      currentIndex = 0;
    }
    _controller = PageController(initialPage: currentIndex);
    onBoardingContent = Config.getonBoardingContent();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: onBoardingContent.length,
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return OnBoardingSlide(item: onBoardingContent[index]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onBoardingContent.length,
                (index) => buildDot(index, context),
              ),
            ),
            animateOrNot(
              animate: (currentIndex >= onBoardingContent.length - 2),
              child: Container(
                key: ValueKey<int>(currentIndex),
                height: 60,
                margin: const EdgeInsets.all(40.0),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (currentIndex == onBoardingContent.length - 1) {
                      SharedPrefsHelper.setIsOnBoardingViewed();
                      Functions.pushReplacement(AppRouter.kHomeView);
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.bounceIn,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        currentIndex == onBoardingContent.length - 1
                            ? Config.primaryColor
                            : Colors.white,
                  ),
                  child: Text(
                    currentIndex == onBoardingContent.length - 1
                        ? S.current.onboarding_start_app
                        : S.current.onboarding_start_next,
                    style: TextStyle(
                      color: currentIndex == onBoardingContent.length - 1
                          ? Colors.white
                          : Config.primaryColor,
                      fontWeight: currentIndex == onBoardingContent.length - 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget animateOrNot({required bool animate, required Widget child}) {
    if (animate) {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: child,
      );
    } else {
      return child;
    }
  }

  AnimatedContainer buildDot(int index, BuildContext context) {
    return AnimatedContainer(
      height: 10,
      width: currentIndex == index ? 20 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Config.primaryColor : Colors.grey,
      ),
      duration: const Duration(milliseconds: 200),
    );
  }
}
