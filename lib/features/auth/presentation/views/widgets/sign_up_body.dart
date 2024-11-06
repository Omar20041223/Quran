import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/auth/presentation/views/widgets/agree_to_polices.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_custom_field.dart';

import '../../../../../core/widgets/custom_button.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody(
      {super.key,
      required this.emailController,
      required this.passwordController,
      required this.confirmPasswordController});

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RegisterCustomField(
            title: "البريد الالكتروني",
            hintText: "ادخل بريدك الالكتروني",
            textInputType: TextInputType.emailAddress,
            controller: emailController),
        24.verticalSpace,
        RegisterCustomField(
          title: "كلمة المرور",
          hintText: "ادخل كلمة المرور",
          textInputType: TextInputType.visiblePassword,
          controller: passwordController,
          obscureText: true,
        ),
        24.verticalSpace,
        RegisterCustomField(
          title: "تأكيد كلمة المرور",
          hintText: "ادخل كلمة المرور",
          textInputType: TextInputType.visiblePassword,
          controller: passwordController,
          obscureText: true,
        ),
        16.verticalSpace,
        AgreeToPolicies(),
        32.verticalSpace,
        CustomButton(text: "تسجيل الدخول",onPressed: (){},)
      ],
    );
  }
}
