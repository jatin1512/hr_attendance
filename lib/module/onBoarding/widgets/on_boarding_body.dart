import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/res/app_colors.dart';
import '../../../core/res/app_fonts.dart';
import '../../../core/res/constants.dart';
import '../../../core/route/routes_name.dart';
import '../../../generated/l10n.dart';
import 'on_boarding_content.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  int currentPage = 0;
  final PageController _pageController = PageController();
  List<Map<String, String>> getSplashData(BuildContext context) => [
    {
      "title": S.of(context).onBoardingTitle1,
      "subTitle": S.of(context).onBoardingSubTitle1,
    },
    {
      "title": S.of(context).onBoardingTitle2,
      "subTitle": S.of(context).onBoardingSubTitle2,
    },
    {
      "title": S.of(context).onBoardingTitle3,
      "subTitle": S.of(context).onBoardingSubTitle3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final splashData = getSplashData(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  title: splashData[index]["title"]!,
                  subTitle: splashData[index]["subTitle"]!,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    const Spacer(flex: 3),
                    buttonView(),
                    const Spacer()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 40 : 10,
      decoration: BoxDecoration(
        color: currentPage == index
            ? AppColors.buttonColorBlue
            : AppColors.unSelectedDot,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Row buttonView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              if (currentPage == 2) {
                // Navigate to next screen
                Get.offAllNamed(RouteName.loginScreen);
              } else {
                _pageController.nextPage(
                  duration: kAnimationDuration,
                  curve: Curves.ease,
                );
              }
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.buttonColorBlue,
                side: BorderSide.none,
                shape: const StadiumBorder()),
            child: Text(
                currentPage == 2 ? S.of(context).getStarted
                    : S.of(context).next,
                style: TextStyle(
                    fontFamily: AppFonts.poppinsSemiBold,
                    fontSize: 14,
                    color: AppColors.colorWhite)),
          ),
        )
      ],
    );
  }
}
