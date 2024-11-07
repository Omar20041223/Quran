import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Text("نسيت كلمة المرور؟",style: Styles.textStyle24W500Brown,),
        24.verticalSpace,
        Text(textAlign: TextAlign.end,"أدخل بريدك الإلكتروني لإعادة تعيين كلمة المرور الخاصة بك، وسنرسل لك رمز التأكيد",style: Styles.textStyle14W400LightGrey,),
      ],
    );
  }
}
