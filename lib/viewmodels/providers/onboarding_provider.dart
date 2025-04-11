import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/onboarding_model.dart';

class OnboardingProvider with ChangeNotifier {
  int _currentPage = 0;
  late PageController _pageController;
  bool _onboardingCompleted = false;

  OnboardingProvider() {
    _pageController = PageController();
    _checkOnboardingStatus();
  }

  int get currentPage => _currentPage;
  PageController get pageController => _pageController;
  bool get onboardingCompleted => _onboardingCompleted;

  List<OnboardingModel> get onboardingData => [
    OnboardingModel(
      image: 'assets/images/splash_screen.png',
      title: 'Welcome to Our App',
      description: 'Discover amazing features and services.',
    ),
    OnboardingModel(
      image: 'assets/images/splash_screen.png',
      title: 'Easy to Use',
      description: 'Our app is user-friendly and easy to navigate.',
    ),
    OnboardingModel(
      image: 'assets/images/splash_screen.png',
      title: 'Get Started Now',
      description: 'Sign up and explore a new way of doing things!',
    ),
  ];

  void nextPage() {
    if (_currentPage == onboardingData.length - 1) {
      _completeOnboarding();
    } else {
      _currentPage++;
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    notifyListeners();
  }

  void updatePageIndex(int index) {
    print(index);
    _currentPage = index;
    notifyListeners();
  }

  Future<void> _checkOnboardingStatus() async {
    final prefs = await SharedPreferences.getInstance();
    _onboardingCompleted = prefs.getBool('onboarding_completed') ?? false;
    notifyListeners();
  }

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('onboarding_completed', true);
    _onboardingCompleted = true; // Notify UI that onboarding is complete
    notifyListeners();
  }

  void skipOnboarding() {
    _completeOnboarding();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
