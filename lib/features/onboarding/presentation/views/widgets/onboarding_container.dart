import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/onboarding/presentation/views/widgets/onboarding_row_buttons_for_container.dart';

import '../../../../../core/utils/styles.dart';

class OnboardingContainer extends StatelessWidget {
  const OnboardingContainer({super.key, required this.onPressedContinue, required this.title, required this.description});
  final Function() onPressedContinue;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.73),
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          38.verticalSpace,
          Text(
            title,
            style: Styles.textStyle32W600White,
          ),
          39.verticalSpace,
          Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                textAlign: TextAlign.center,
                description,
                style: Styles.textStyle24W400White,
              )),
          42.verticalSpace,
          OnboardingRowButtonsForContainer(onPressedContinue: onPressedContinue,),
          16.verticalSpace
        ],
      ),
    );
  }
}