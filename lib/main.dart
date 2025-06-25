import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import 'core/res/theme.dart';
import 'core/route/routes.dart';
import 'core/route/routes_name.dart';
import 'generated/l10n.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'HR Attendance',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      defaultTransition: Transition.rightToLeft,
      getPages: AppRoutes.appRoutes(),
      initialRoute: RouteName.splashScreen,
    );
  }
}
