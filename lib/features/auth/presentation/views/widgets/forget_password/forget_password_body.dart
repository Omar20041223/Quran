import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/auth_app_bar.dart';
import 'package:quran/features/auth/presentation/views/widgets/forget_password/forget_password_field_and_button.dart';

import '../auth_header.dart';
class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0.h),
      child: Column(
        children: [
          24.verticalSpace,
          const AuthAppBar(),
          24.verticalSpace,
          const AuthHeader(title: "نسيت كلمة المرور؟", description: "أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك، وسنرسل لك رمز التأكيد",),
          48.verticalSpace,
          const ForgetPasswordFieldAndButton()
        ],
      ),
    );
  }
}
