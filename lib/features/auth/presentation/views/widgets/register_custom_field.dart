import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_text_form_field.dart';
class RegisterCustomField extends StatelessWidget {
  const RegisterCustomField({super.key, required this.title, required this.hintText, required this.textInputType, required this.controller, this.obscureText = false});
  final String title;
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController controller;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(title,style: Styles.textStyle16W500Black,),
        12.verticalSpace,
        CustomTextFormField(hintText: hintText, textInputType: textInputType,controller:controller,obscureText: obscureText,)
      ],
    );
  }
}
