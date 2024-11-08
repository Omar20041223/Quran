import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/auth_app_bar.dart';
import 'package:quran/features/auth/presentation/views/widgets/auth_header.dart';
import 'package:quran/features/auth/presentation/views/widgets/verification/verification_otp.dart';

class VerificationBody extends StatelessWidget {
  const VerificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
      child: Column(
        children: [
          16.verticalSpace,
          const AuthAppBar(),
          24.verticalSpace,
          const AuthHeader(
              title: "رمز التحقق",
              description: "أدخل الرمز الذي أرسلناه إلى رقمك 01210190837 "),
          48.verticalSpace,
          const VerificationOtp()
        ],
      ),
    );
  }
}
