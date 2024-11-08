import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart' as intl; // Alias the intl package

import '../../../../../core/utils/styles.dart';

class HomeViewHeaderDate extends StatelessWidget {
  const HomeViewHeaderDate({super.key});

  @override
  Widget build(BuildContext context) {
    var today = HijriCalendar.now();
    HijriCalendar.setLocal('ar'); // Ensure Arabic locale is set

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          textDirection: TextDirection.rtl,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              intl.DateFormat('EEEE, d MMMM', 'ar').format(DateTime.now()),
              style: Styles.textStyle16W500White,
            ),
            4.verticalSpace,
            Text(
              "${today.toFormat("dd MMMM yyyy")} هجري",
              style: Styles.textStyle16W400White,
            ),
          ],
        ),
      ],
    );
  }
}
