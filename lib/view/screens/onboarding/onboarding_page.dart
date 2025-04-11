import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/onboarding_model.dart';

class OnboardingPage  extends StatelessWidget {
  const OnboardingPage ({super.key, required this.model});
  final OnboardingModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(model.image,),height: 300,),
          const SizedBox(
            height: 20,
          ),
           Text(model.title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          const SizedBox(height: 10),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              model.description,
              // model.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
