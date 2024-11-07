import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/register/login/login_body.dart';
import 'package:quran/features/auth/presentation/views/widgets/register/register_buttons_for_tap_bar.dart';
import 'package:quran/features/auth/presentation/views/widgets/register/sign_up/sign_up_body.dart';

class RegisterTabBar extends StatefulWidget {
  const RegisterTabBar({super.key});

  @override
  State<RegisterTabBar> createState() => _RegisterTabBarState();
}

class _RegisterTabBarState extends State<RegisterTabBar> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterButtonsForTapBar(
          onIndexChanged: (int value) {
            index = value;
            setState(() {});
          },
        ),
        32.verticalSpace,
        index == 1
            ? const LoginBody()
            : const SignUpBody(),
      ],
    );
  }
}
