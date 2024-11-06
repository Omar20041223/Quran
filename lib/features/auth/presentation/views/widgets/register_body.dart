import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/login_body.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_buttons_for_tap_bar.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_header.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_tail.dart';


class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const RegisterHeader(),
            24.verticalSpace,
            RegisterButtonsForTapBar(onIndexChanged: (int value) {  },),
            32.verticalSpace,
            LoginBody(emailController: emailController, passwordController: passwordController),
            const RegisterTail(),
            43.verticalSpace,
          ],
        ),
      ),
    );
  }
}
