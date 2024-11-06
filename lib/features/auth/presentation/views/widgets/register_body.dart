import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/login_body.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_buttons_for_tap_bar.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_header.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_tail.dart';
import 'package:quran/features/auth/presentation/views/widgets/sign_up_body.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const RegisterHeader(),
            24.verticalSpace,
            RegisterButtonsForTapBar(
              onIndexChanged: (int value) {
                index = value;
                setState(() {});
              },
            ),
            32.verticalSpace,
            index == 1
                ? LoginBody(
                    emailController: emailController,
                    passwordController: passwordController)
                : SignUpBody(emailController: emailController, passwordController: passwordController, confirmPasswordController: confirmPasswordController,),
            32.verticalSpace,
            const RegisterTail(),
            43.verticalSpace,
          ],
        ),
      ),
    );
  }
}
