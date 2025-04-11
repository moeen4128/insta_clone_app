import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../viewmodels/providers/onboarding_provider.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingProvider>(
      builder: (context, provider, child) {
        if (provider.onboardingCompleted) {
          Future.microtask(() => Navigator.pushReplacementNamed(context, '/login'));
        }

        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: provider.pageController,
                  itemCount: provider.onboardingData.length,
                  onPageChanged: provider.updatePageIndex,
                  itemBuilder: (context, index) {
                    final data = provider.onboardingData[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(data.image, height: 250),
                        SizedBox(height: 20),
                        Text(data.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(height: 10),
                        Text(data.description, textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: provider.skipOnboarding,
                    child: Text("Skip"),
                  ),
                  ElevatedButton(
                    onPressed: provider.nextPage,
                    child: Text(provider.currentPage == provider.onboardingData.length - 1 ? "Get Started" : "Next"),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
