import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';

class CustomIndicator extends StatelessWidget {
  final int currentIndex;
  final int length;
  final MainAxisAlignment? mainAxisAlignment;
  final double width;
  final double height;

  const CustomIndicator(
      {super.key,
        required this.currentIndex,
        required this.length,
        this.mainAxisAlignment,
        required this.width,
        required this.height});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
      children: List.generate(length, (index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          width: index == currentIndex ? 50.w : width.r,
          height: height.r,
          decoration: BoxDecoration(
            color: index == currentIndex
                ? AppColors.brown
                : Colors.white,
            shape: index == currentIndex ? BoxShape.rectangle : BoxShape.circle,
            borderRadius: index == currentIndex ? BorderRadius.circular(11.r) : null,
          ),
        );
      }),
    );
  }
}
