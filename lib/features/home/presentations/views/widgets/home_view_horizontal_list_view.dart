import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_horizontal_list_view_item.dart';

class HomeViewHorizontalListView extends StatelessWidget {
  const HomeViewHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        height: 181.h,
        child: ListView.builder(
          itemBuilder: (index, context) {
            return Padding(
              padding:  EdgeInsets.only(right: 16.0.w),
              child: const HomeViewHorizontalListViewItem(),
            );
          },
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
