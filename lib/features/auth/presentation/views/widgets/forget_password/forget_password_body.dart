import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/forget_password/forget_password_app_bar.dart';
class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0.h),
      child: Column(
        children: [
          24.verticalSpace,
          const ForgetPasswordAppBar()
        ],
      ),
    );
  }
}
