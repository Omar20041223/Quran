import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_button.dart';

class HomeViewButtons extends StatelessWidget {
  const HomeViewButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Row(
        children: [
          HomeViewButton(
              image: "assets/images/calender_icon.png",
              onTap: () {},
              title: "التقويم"),
          Spacer(),
          HomeViewButton(
              image: "assets/images/elsalah_icon.png",
              onTap: () {},
              title: "الصلاة"),
          Spacer(),
          HomeViewButton(
              image: "assets/images/7adeesh_icon.png",
              onTap: () {},
              title: "حديث"),
          Spacer(),
          HomeViewButton(
              image: "assets/images/quran_icon.png",
              onTap: () {},
              title: "قرآن"),
        ],
      ),
    );
  }
}
