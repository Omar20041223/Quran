import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/validator.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../auth_custom_field.dart';
class ForgetPasswordFieldAndButton extends StatefulWidget {
  const ForgetPasswordFieldAndButton({super.key});

  @override
  State<ForgetPasswordFieldAndButton> createState() => _ForgetPasswordFieldAndButtonState();
}

class _ForgetPasswordFieldAndButtonState extends State<ForgetPasswordFieldAndButton> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
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
          CustomButton(
            text: "ارسال",
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
