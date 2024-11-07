import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/register/register_header.dart';
import 'package:quran/features/auth/presentation/views/widgets/register/register_tab_bar.dart';
import 'package:quran/features/auth/presentation/views/widgets/register/register_tail.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const RegisterHeader(),
            24.verticalSpace,
            const RegisterTabBar(),
            32.verticalSpace,
            const RegisterTail(),
            43.verticalSpace,
          ],
        ),
      ),
    );
  }
}
