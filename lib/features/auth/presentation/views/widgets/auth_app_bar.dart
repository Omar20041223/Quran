import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';
class AuthAppBar extends StatelessWidget {
  const AuthAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){
            GoRouter.of(context).pop();
          },
          child: Container(
            width: 30.w,
            height: 30.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: AppColors.brown,
              )
            ),
            child: Icon(Icons.arrow_back_ios_new,size: 20.sp,),
          ),
        )
      ],
    );
  }
}
