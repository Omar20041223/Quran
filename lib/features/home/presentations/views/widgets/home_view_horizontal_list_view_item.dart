import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_image.dart';

class HomeViewHorizontalListViewItem extends StatelessWidget {
  const HomeViewHorizontalListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF40407B).withOpacity(.25),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImage(
            url: "assets/images/home_view_man_photo.png",
            borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
            height: 100.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "محمد علي",
                  style: Styles.textStyle16W400White.copyWith(
                    color: const Color(0xff5C649D),
                  ),
                ),
                Text(
                  "مُحفظ",
                  style: Styles.textStyle16W400LighterGrey.copyWith(
                    fontSize: 12.sp
                  )
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Row(
                      textDirection: TextDirection.ltr,

                      children: [
                        Text("4.6",style: Styles.textStyle14W400LightGrey,),
                        Icon(Icons.star_rounded,color: Colors.yellow,size: 20.sp,)
                      ],
                    ),
                    const Spacer(),
                    Text("المراجعات",style: Styles.textStyle14W400LightGrey.copyWith(
                      color: const Color(0xff9467DD)
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
