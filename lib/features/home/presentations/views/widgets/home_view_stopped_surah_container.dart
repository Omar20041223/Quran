import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_button.dart';
import 'package:quran/core/widgets/custom_image.dart';

class HomeViewStoppedSurahContainer extends StatelessWidget {
  const HomeViewStoppedSurahContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: CustomImage(
        borderRadius: BorderRadius.circular(12.r),
        url: 'assets/images/home_view_quran_image.png',
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: Colors.black.withOpacity(.70),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 15.0.w,right: 11.w, bottom: 19.h,top: 15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(
                  url: "assets/images/quran_karem_image.png",
                  height: 120.h,
                  width: 120.w,
                ),
                22.verticalSpace,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                        textDirection: TextDirection.rtl,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'متابعة القرآن من حيث توقفت\nتوقفت عند سورة ',
                              style: Styles.textStyle16W400White,
                            ),
                            TextSpan(
                              text: 'النساء\n',
                              style: Styles.textStyle16W400Brown,
                            ),
                            TextSpan(
                              text: 'صفحة ',
                              style: Styles.textStyle16W400White,
                            ),
                            TextSpan(
                              text: '79',
                              style: Styles.textStyle16W400Brown,
                            ),
                          ],
                        ),
                      ),
                      6.verticalSpace,
                      CustomButton(text: "متابعة الحفظ",borderRadius: BorderRadius.circular(12.r),textStyle: Styles.textStyle16W400White,width: 127.w,  )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
