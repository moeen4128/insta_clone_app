import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../config/routes.dart';

class SplashProvider with ChangeNotifier {
  void checkOnboarding(BuildContext context) async {
    await Future.delayed(Duration(seconds: 3)); // Simulate loading time

    final prefs = await SharedPreferences.getInstance();
    bool onboardingCompleted = prefs.getBool('onboarding_completed') ?? false;

    Navigator.pushReplacementNamed(context, onboardingCompleted ? AppRoutes.login : AppRoutes.onboarding);
  }
}
