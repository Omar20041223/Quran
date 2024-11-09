import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';

class HomeViewStepIndicator extends StatefulWidget {
  const HomeViewStepIndicator({super.key});

  @override
  State<HomeViewStepIndicator> createState() =>
      _HomeViewStepIndicatorState();
}

class _HomeViewStepIndicatorState extends State<HomeViewStepIndicator> {
  List<bool> isDone = [false, false, false, false, false];
  TimeOfDay time = TimeOfDay.now();
  final TimeOfDay elfajr = const TimeOfDay(hour: 4, minute: 46);
  final TimeOfDay elzohr = const TimeOfDay(hour: 11, minute: 38);
  final TimeOfDay elasr = const TimeOfDay(hour: 14, minute: 38); // 2:38 PM
  final TimeOfDay elmaghrib = const TimeOfDay(hour: 17, minute: 00); // 5:00 PM
  final TimeOfDay elisha = const TimeOfDay(hour: 18, minute: 20); // 6:20 PM

  @override
  Widget build(BuildContext context) {
    _updatePrayerCompletionStatus();

    List<String> icons = [
      'assets/images/elisha_icon.png',
      'assets/images/elmaghrib_icon.png',
      'assets/images/elasr_icon.png',
      'assets/images/elzohr_icon.png',
      'assets/images/elfajr_icon.png',
    ];

    return Padding(
      padding: EdgeInsets.only(left: 22.0.w, right: 26.0.w),
      child: Row(
        children: List.generate(5, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 24.r,
                      width: 24.r,
                      decoration: BoxDecoration(
                        color: isDone[index]
                            ? AppColors.darkBrown
                            : Colors.transparent,
                        border: Border.all(
                            color: isDone[index]
                                ? Colors.transparent
                                : AppColors.brown),
                        shape: BoxShape.circle,
                      ),
                      child: isDone[index]
                          ? Icon(Icons.check, color: Colors.white, size: 22.sp)
                          : null,
                    ),
                    (index != 4)
                        ? Container(
                            color: AppColors.brown,
                            height: 1.h,
                            width: 55.w,
                          )
                        : const SizedBox()
                  ],
                ),
                8.verticalSpace,
                Image.asset(
                  icons[index],
                  height: 24.h,
                  width: 24.h,
                )
                // Reverse the icon order
              ],
            );
          },
        ),
      ),
    );
  }

  void _updatePrayerCompletionStatus() {
    // Reset all to false first
    isDone = [false, false, false, false, false];

    if (timeIsBefore(time, elfajr)) {
      // No prayers are done if it's before Fajr
      isDone = [false, false, false, false, false];
    } else if (timeIsBefore(time, elzohr)) {
      // Fajr done
      isDone[4] = true;
    } else if (timeIsBefore(time, elasr)) {
      // Fajr and Dhuhr done
      isDone[4] = true;
      isDone[3] = true;
    } else if (timeIsBefore(time, elmaghrib)) {
      // Fajr, Dhuhr, and Asr done
      isDone[4] = true;
      isDone[3] = true;
      isDone[2] = true;
    } else if (timeIsBefore(time, elisha)) {
      // Fajr, Dhuhr, Asr, and Maghrib done
      isDone[4] = true;
      isDone[3] = true;
      isDone[2] = true;
      isDone[1] = true;
    } else {
      // All prayers done
      isDone = [true, true, true, true, true];
    }
  }

  bool timeIsBefore(TimeOfDay currentTime, TimeOfDay prayerTime) {
    return currentTime.hour < prayerTime.hour ||
        (currentTime.hour == prayerTime.hour &&
            currentTime.minute < prayerTime.minute);
  }
}
