import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';
import 'package:quran/core/utils/styles.dart';

class HomeViewButton extends StatelessWidget {
  const HomeViewButton({super.key, required this.image, required this.onTap, required this.title});

  final String image;
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60.h,
            width: 60.w,
            decoration: BoxDecoration(
                color: AppColors.darkBrown,
                borderRadius: BorderRadius.circular(20.r)),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Image.asset(
                image,
                height: 32.h,
                width: 32.w,
              ),
            ),
          ),
        ),
        4.verticalSpace,
        Text(title,style: Styles.textStyle16W500Brown,)
      ],
    );
  }
}
