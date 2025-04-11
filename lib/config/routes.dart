import 'package:flutter/material.dart';

import '../view/screens/auth/login_screen.dart';
import '../view/screens/onboarding/onboarding_screen.dart';
import '../view/screens/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splash: (context) => SplashScreen(),
      onboarding: (context) => OnboardingScreen(),
      login: (context) => LoginScreen(),
    };
  }
}
