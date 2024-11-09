import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';

import '../../../../../core/utils/colors.dart';
import 'home_view_horizontal_list_view.dart';
class HomeViewTail extends StatelessWidget {
  const HomeViewTail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){},
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new,color: AppColors.brown,size: 15.sp,),
                    4.horizontalSpace,
                    Text("عرض الكل",style: Styles.textStyle16W500Brown,)
                  ],
                ),
              ),
              const Spacer(),
              Text("المُحفظون",style: Styles.textStyle20W500Black,)
            ],
          ),
        ),
        16.verticalSpace,
        HomeViewHorizontalListView()
      ],
    );
  }
}
