import 'package:flutter/material.dart';
import 'package:quran/core/widgets/custom_image.dart';
import 'package:quran/features/onboarding/presentation/views/widgets/onboarding_container.dart';

import '../../../../../core/utils/assets.dart';
class OnboardingPageViewItem extends StatelessWidget {
  const OnboardingPageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomImage(url: Assets.onBoarding1,child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboardingContainer(),
      ],
    ),);
  }
}
