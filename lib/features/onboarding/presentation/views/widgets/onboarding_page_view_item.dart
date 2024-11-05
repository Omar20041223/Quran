import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/core/widgets/custom_image.dart';
import 'package:quran/core/widgets/custom_indicator.dart';
import 'package:quran/features/onboarding/data/models/onboarding_model.dart';
import 'package:quran/features/onboarding/presentation/views/widgets/onboarding_container.dart';

import '../../../../../core/utils/app_router.dart';

class OnboardingPageViewItem extends StatelessWidget {
  const OnboardingPageViewItem(
      {super.key, required this.currentIndex, required this.pageController});

  final int currentIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return CustomImage(
      url: onboardingList[currentIndex].image,
      child: Column(
        children: [
          359.verticalSpace,
          OnboardingContainer(
            onPressedContinue: () {
              if (currentIndex == 2) {
                GoRouter.of(context).push(AppRouter.kRegisterView);
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linearToEaseOut,
                );
              }
            },
            title: onboardingList[currentIndex].title,
            description: onboardingList[currentIndex].description,
          ),
          100.verticalSpace,
          CustomIndicator(currentIndex: currentIndex, length: 3, width: 12.w, height: 12.h),
        ],
      ),
    );
  }
}
