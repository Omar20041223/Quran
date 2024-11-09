import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';
import 'package:quran/core/utils/styles.dart';

class HomeViewAyahAnd7adeethConatiner extends StatelessWidget {
  const HomeViewAyahAnd7adeethConatiner({super.key, required this.title, required this.desc});
  final String title;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 197.h,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white.withOpacity(.7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25), // Adjust opacity as needed
            offset: const Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.w),
            child: Row(
              children: [
                const Icon(Icons.save),
                12.verticalSpace,
                const Icon(Icons.share),
                const Spacer(),
                Text(
                  title,
                  style: Styles.textStyle20W600Brown,
                ),
                4.verticalSpace,
                const Icon(Icons.rectangle),
              ],
            ),
          ),
          Divider(
            height: 1.h,
            color: AppColors.brown.withOpacity(.27),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                child: Text(
                  desc,
                  style: Styles.textStyle16W400Black,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
