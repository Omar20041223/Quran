import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/widgets/custom_image.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_header.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_tail.dart';

import '../../../../../core/utils/assets.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.h),
      child: Column(
        children: [
          const RegisterHeader(),
          24.verticalSpace,
          const Expanded(
            child: CustomImage(url: Assets.onBoarding1),
          ),
          const RegisterTail(),
          43.verticalSpace,
        ],
      ),
    );
  }
}
