import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/core/utils/app_router.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_button.dart';

import '../../../../../../core/utils/colors.dart';

class VerificationOtpColumnForAlertDialog extends StatelessWidget {
  const VerificationOtpColumnForAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        25.verticalSpace,
        Container(
          width: 103.r,
          height: 103.r,
          decoration: const BoxDecoration(
            color: Color(0xffF5F8FF),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check,
            color: AppColors.brown,
            size: 50.sp,
          ),
        ),
        40.verticalSpace,
        Text(
          "تم بنجاح",
          style: Styles.textStyle24W700Black,
        ),
        12.verticalSpace,
        Directionality(
          textDirection: TextDirection.rtl,
          child: Text(
            "لقد تم إعادة تعيين كلمة المرور الخاصة بك بنجاح.",
            textAlign: TextAlign.center,
            style: Styles.textStyle16W400LighterGrey,
          ),
        ),
        17.verticalSpace,
        CustomButton(
          text: "تسجيل الدخول",
          width: 183.w,
          height: 52.h,
          onPressed: () {
            GoRouter.of(context).pop();
            GoRouter.of(context).push(AppRouter.kRegisterView);
          },
        )
      ],
    );
  }
}
