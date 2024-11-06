import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';
import 'package:quran/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
        required this.hintText,
        // required this.icon,
        required this.textInputType,
        this.controller,
        this.validator,
        this.obscureText = false,
        // this.suffixIcon
      });

  final String hintText;
  // final IconData icon;
  final TextInputType textInputType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  // final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: Styles.textStyle14W400LightGrey,
        // suffixIcon: suffixIcon,
        // prefixIcon: Icon(
        //   icon,
        //   size: 12.25.sp,
        //   color: kIconsColorForAuth,
        // ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(
            color: AppColors.lightGrey,
            width: 1,
          ),
        ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.r),
        //   borderSide: BorderSide(
        //     width: 2.w,
        //     color: Colors.red,
        //   ), // Thicker red border on error
        // ),
      ),
      keyboardType: textInputType,
      textAlign: TextAlign.end,
    );
  }
}
