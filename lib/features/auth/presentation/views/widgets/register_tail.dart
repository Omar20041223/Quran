import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
class RegisterTail extends StatelessWidget {
  const RegisterTail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        32.verticalSpace,
        Text("خيارات تسجيل الدخول الأخرى",style: Styles.textStyle14W400Black,),
        24.verticalSpace,
        // todo change icons and extract widgets
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50.r,
              width: 50.r,
              decoration:  BoxDecoration(
                shape:  BoxShape.circle,
                border: Border.all(
                  color: const Color(0xffD8DADC)
                )
              ),
              child: Icon(Icons.apple),
            ),
            11.horizontalSpace,
            Container(
              height: 50.r,
              width: 50.r,
              decoration:  BoxDecoration(
                shape:  BoxShape.circle,
                border: Border.all(
                  color: const Color(0xffD8DADC)
                )
              ),
              child: Icon(Icons.garage_outlined),
            ),
            11.horizontalSpace,
            Container(
              height: 50.r,
              width: 50.r,
              decoration:  BoxDecoration(
                shape:  BoxShape.circle,
                border: Border.all(
                  color: const Color(0xffD8DADC)
                )
              ),
              child: Icon(Icons.facebook),
            ),
          ],
        )
      ],
    );
  }
}
