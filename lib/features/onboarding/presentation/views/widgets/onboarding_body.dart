import 'package:flutter/material.dart';
import 'package:quran/features/onboarding/presentation/views/widgets/onboarding_page_view_item.dart';

import '../../../../../core/widgets/custom_image.dart';
class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(itemBuilder: (context,index){
      return const OnboardingPageViewItem();
    });
  }
}
