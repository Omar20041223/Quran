import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/helpers/validator.dart';
import 'package:quran/features/auth/presentation/views/widgets/agree_to_polices.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_custom_field.dart';

import '../../../../../core/widgets/custom_button.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody(
      {super.key,});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          RegisterCustomField(
            title: "البريد الالكتروني",
            hintText: "ادخل بريدك الالكتروني",
            textInputType: TextInputType.emailAddress,
            controller: emailController,
            validator: Validator.emailValidator,
            autoValidateMode: autoValidateMode,
          ),
          24.verticalSpace,
          RegisterCustomField(
            title: "كلمة المرور",
            hintText: "ادخل كلمة المرور",
            textInputType: TextInputType.visiblePassword,
            controller: passwordController,
            obscureText: true,
            validator: Validator.passwordValidator,
            autoValidateMode: autoValidateMode,
          ),
          24.verticalSpace,
          RegisterCustomField(
              title: "تأكيد كلمة المرور",
              hintText: "ادخل كلمة المرور",
              textInputType: TextInputType.visiblePassword,
              controller: confirmPasswordController,
              obscureText: true,
              autoValidateMode: autoValidateMode,
              validator: (value) {
                return Validator.passwordConfirmValidator(
                    value, passwordController.text.trim());
              }),
          16.verticalSpace,
          AgreeToPolicies(
            validator: (value) {
              if (value != true) {
                return 'You must agree to the terms and conditions.';
              }
              return null;
            },
            autovalidateMode: autoValidateMode,
          ),
          32.verticalSpace,
          CustomButton(
            text: "تسجيل الدخول",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
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
