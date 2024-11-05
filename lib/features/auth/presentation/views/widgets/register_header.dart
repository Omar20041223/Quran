import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        32.verticalSpace,
        Text(
          "أولي العزم",
          style: Styles.textStyle32W700Brown,
        ),
        16.verticalSpace,
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 32.0.w),
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "قم بتسجيل الدخول أو إنشاء حساب جديد لحفظ تقدمك",
                textAlign: TextAlign.center,
                style: Styles.textStyle16W500LightGrey,
              )),
        )
      ],
    );
  }
}
