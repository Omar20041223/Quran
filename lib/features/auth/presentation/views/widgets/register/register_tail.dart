import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
class RegisterTail extends StatelessWidget {
  const RegisterTail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("خيارات تسجيل الدخول الأخرى",style: Styles.textStyle14W400Black,),
        24.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _container(image: "assets/images/facebook_icon.png"),
            11.horizontalSpace,
            _container(image: "assets/images/google_icon.png"),
            11.horizontalSpace,
            _container(image: "assets/images/apple_icon.png"),
          ],
        )
      ],
    );
  }
  Widget _container({required String image}) {
    return Container(
      height: 50.r,
      width: 50.r,
      decoration:  BoxDecoration(
          shape:  BoxShape.circle,
          border: Border.all(
              color: const Color(0xffD8DADC)
          )
      ),
      child: Center(child: Image.asset(image,width: 20.w,height: 20.h,)),
    );
  }

}
