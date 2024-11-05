import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';

abstract class Styles{
  //onboarding
  static TextStyle textStyle32W600White = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white
  );
  static TextStyle textStyle24W400White = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white
  );
  static TextStyle textStyle20W400Brown = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.brown
  );
  static TextStyle textStyle20W400LightGrey = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGrey
  );
}