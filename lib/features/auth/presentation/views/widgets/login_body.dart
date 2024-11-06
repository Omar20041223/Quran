import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_button.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_custom_field.dart';
class LoginBody extends StatelessWidget {
  const LoginBody({super.key, required this.emailController, required this.passwordController});
  final TextEditingController emailController;
  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RegisterCustomField(title: "البريد الالكتروني", hintText: "ادخل بريدك الالكتروني", textInputType: TextInputType.emailAddress, controller: emailController),
        24.verticalSpace,
        RegisterCustomField(title: "كلمة المرور", hintText: "ادخل كلمة المرور", textInputType: TextInputType.visiblePassword, controller: passwordController,obscureText: true,),
        16.verticalSpace,
        Text("نسيت كلمة المرور؟",style: Styles.textStyle14W400Brown,),
        64.verticalSpace,
        CustomButton(text: "تسجيل الدخول",onPressed: (){},)
      ],
    );
  }
}