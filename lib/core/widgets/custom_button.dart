import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';

import '../utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.borderRadius,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.textStyle,
    this.height,
    // this.shadow = false,
    this.width,
    this.border, // Default to false
  });

  final String text;
  final BorderRadius? borderRadius;
  final Function()? onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? height;
  // final bool shadow;
  final double? width;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h,
      width: width?.w,
      child: Container(
        decoration: BoxDecoration(
          border: border ?? Border.all(
            width: 1,
            color: Colors.transparent,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(33.r),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor ?? AppColors.brown,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(33.r),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: textStyle ?? Styles.textStyle20W400Brown,
            ),
          ),
        ),
      ),
    );
  }
}
