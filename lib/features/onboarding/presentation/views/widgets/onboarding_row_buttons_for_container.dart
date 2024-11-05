import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_button.dart';

import '../../../../../core/utils/colors.dart';

class OnboardingRowButtonsForContainer extends StatelessWidget {
  const OnboardingRowButtonsForContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: "تخطي",
            textStyle: Styles.textStyle20W400LightGrey,
            border: Border.all(
              width: 2,
              color: AppColors.lightGrey,
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        14.horizontalSpace,
        Expanded(
          child: CustomButton(
            text: "متابعة",
            textStyle: Styles.textStyle20W400Brown,
            border: Border.all(
              width: 2,
              color: AppColors.brown,
            ),
            backgroundColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
