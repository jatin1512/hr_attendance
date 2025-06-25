import 'package:flutter/material.dart';
import 'package:hr_attendance/module/onBoarding/widgets/on_boarding_body.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
