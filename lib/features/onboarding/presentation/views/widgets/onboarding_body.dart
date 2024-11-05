import 'package:flutter/material.dart';
import 'package:quran/features/onboarding/presentation/views/widgets/onboarding_page_view_item.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return PageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, index) {
        return OnboardingPageViewItem(
          currentIndex: index,
          pageController: pageController,
        );
      },
    );
  }
}
