import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_image.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_header_date.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImage(
      url: "assets/images/onboarding1.png",
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              16.verticalSpace,
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active,
                  color: AppColors.darkBrown,
                ),
              ),
              24.verticalSpace,
              const HomeViewHeaderDate(),
              12.verticalSpace,
              Text("الزقازيق , السلام",style: Styles.textStyle16W500White,),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
