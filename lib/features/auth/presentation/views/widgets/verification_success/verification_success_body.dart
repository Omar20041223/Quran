import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_image.dart';

class VerificationSuccessBody extends StatelessWidget {
  const VerificationSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        71.verticalSpace,
        const Center(
          child: CustomImage(
            url: "assets/images/verification_success_image.png",
            width: 314,
            height: 450,
          ),
        ),
        32.verticalSpace,
        Text(
          "تم ارسال طلبك",
          style: Styles.textStyle24W600Brown,
        ),
        32.verticalSpace,
        Text(
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          "يرجى الانتظار...\nسيقوم المسؤولون بتسكينك مع أحد المحفظين",
          style: Styles.textStyle16W500Black,
        )
      ],
    );
  }
}
