import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '/src/core/app_constant.dart';
import '/src/core/app_routes.dart';
import '/src/core/app_theme.dart';
import '/src/ui/app/theme_provider.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  final String fontFamily = "Montserrat";
  final FirebaseAnalytics? firebaseAnalytics;

  const MyApp({
    required this.firebaseAnalytics,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Consumer<ThemeProvider>(
        builder: (context, ThemeProvider provider, child) {
      return MaterialApp(
        title: 'Math Mania',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        darkTheme: AppTheme.darkTheme,
        themeMode: provider.themeMode,
        initialRoute: KeyUtil.splash,
        routes: appRoutes,
        // home: DashboardView(),
        navigatorObservers: [
          if (firebaseAnalytics != null)
            FirebaseAnalyticsObserver(analytics: firebaseAnalytics!)
        ],
      );
    });
  }
}
