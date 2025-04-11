import 'package:flutter/material.dart';
import 'package:insta_clone/viewmodels/providers/auth_provider.dart';
import 'package:insta_clone/viewmodels/providers/onboarding_provider.dart';
import 'package:insta_clone/viewmodels/providers/splash_provider.dart';
import 'package:provider/provider.dart';
import 'app.dart';
void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider(),),
        ChangeNotifierProvider(create: (_) => OnboardingProvider()),
      ],
      child: const MyApp()));
}


