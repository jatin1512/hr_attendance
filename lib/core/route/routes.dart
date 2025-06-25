import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:hr_attendance/core/route/routes_name.dart';
import 'package:hr_attendance/module/forgotPassword/forgot_password_screen.dart';
import 'package:hr_attendance/module/forgotPassword/forgot_password_verification_screen.dart';
import 'package:hr_attendance/module/forgotPassword/forgot_pwd_change_password.dart';
import 'package:hr_attendance/module/home/apply_leave_screen.dart';
import 'package:hr_attendance/module/home/dashboard_screen.dart';
import 'package:hr_attendance/module/home/leave_details_screen.dart';
import 'package:hr_attendance/module/home/member_time_details_screen.dart';
import 'package:hr_attendance/module/home/my_profile_screen.dart';
import 'package:hr_attendance/module/home/notification_screen.dart';
import 'package:hr_attendance/module/login/login_screen.dart';
import 'package:hr_attendance/module/onBoarding/on_boarding_screen.dart';
import 'package:hr_attendance/module/registration/registration_screen.dart';

import '../../module/splash/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(name: RouteName.splashScreen, page: () => const SplashScreen()),
        GetPage(
            name: RouteName.onBoardingScreen,
            page: () => const OnBoardingScreen()),
        GetPage(name: RouteName.loginScreen, page: () => const LoginScreen()),
        GetPage(
            name: RouteName.forgotPasswordScreen,
            page: () => const ForgotPasswordScreen()),
        GetPage(
            name: RouteName.forgotPwdVerificationScreen,
            page: () => const ForgotPasswordVerificationScreen()),
        GetPage(
            name: RouteName.forgotPwdChangePasswordScreen,
            page: () => const ForgotPwdChangePassword()),
        GetPage(
            name: RouteName.registrationScreen,
            page: () => const RegistrationScreen()),
        GetPage(
            name: RouteName.homeScreen, page: () => const DashboardScreen()),
        GetPage(
            name: RouteName.applyLeaveScreen,
            page: () => const ApplyLeaveScreen()),
        GetPage(
            name: RouteName.leaveDetailsScreen,
            page: () => const LeaveDetailsScreen()),
        GetPage(
            name: RouteName.memberTimeDetailsScreen,
            page: () => const MemberTimeDetailsScreen()),
        GetPage(
            name: RouteName.myProfileScreen,
            page: () => const MyProfileScreen()),
        GetPage(
            name: RouteName.notificationListScreen,
            page: () => const NotificationScreen()),
      ];
}
