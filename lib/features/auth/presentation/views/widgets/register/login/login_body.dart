import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/core/helpers/validator.dart';
import 'package:quran/core/utils/app_router.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_button.dart';
import 'package:quran/features/auth/presentation/views/widgets/auth_custom_field.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({
    super.key,
  });

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthCustomField(
            title: "البريد الالكتروني",
            hintText: "ادخل بريدك الالكتروني",
            textInputType: TextInputType.emailAddress,
            controller: emailController,
            validator: Validator.emailValidator,
            autoValidateMode: autoValidateMode,
          ),
          24.verticalSpace,
          AuthCustomField(
            title: "كلمة المرور",
            hintText: "ادخل كلمة المرور",
            textInputType: TextInputType.visiblePassword,
            controller: passwordController,
            obscureText: true,
            validator: Validator.passwordValidator,
            autoValidateMode: autoValidateMode,
          ),
          // 16.verticalSpace,
          TextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kForgetPasswordView);
            },
            child: Text(
              "نسيت كلمة المرور؟",
              style: Styles.textStyle14W400Brown,
            ),
          ),
          64.verticalSpace,
          CustomButton(
            text: "تسجيل الدخول",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                GoRouter.of(context).push(AppRouter.kVerificationSuccessView);
              } else {
                setState(() {});
                autoValidateMode = AutovalidateMode.always;
              }
            },
          )
        ],
      ),
    );
  }
}
