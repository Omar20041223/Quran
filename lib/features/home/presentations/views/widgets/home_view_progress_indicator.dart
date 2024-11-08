import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../../../../core/utils/colors.dart';

class PrayerProgressIndicator extends StatefulWidget {
  final DateTime prayerTime; // The time of the upcoming prayer

  const PrayerProgressIndicator({
    super.key,
    required this.prayerTime,
  });

  @override
  _PrayerProgressIndicatorState createState() => _PrayerProgressIndicatorState();
}

class _PrayerProgressIndicatorState extends State<PrayerProgressIndicator> {
  late Timer _timer;
  Duration remainingTime = Duration.zero;
  double progress = 0.0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _updateProgress();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateProgress();
    });
  }

  void _updateProgress() {
    final now = DateTime.now();

    if (now.isBefore(widget.prayerTime)) {
      setState(() {
        remainingTime = widget.prayerTime.difference(now);

        // Calculate the total duration from now until the prayer time
        final totalDuration = widget.prayerTime.difference(now).inSeconds;
        final elapsedDuration = now.difference(DateTime(now.year, now.month, now.day)).inSeconds;
        progress = 1 - (remainingTime.inSeconds / totalDuration);
      });
    } else {
      _timer.cancel(); // Stop the timer once the prayer time has passed
      setState(() {
        progress = 1.0;
        remainingTime = Duration.zero;
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  String _formatDuration(Duration duration) {
    final hours = duration.inHours.toString().padLeft(2, '0');
    final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    final seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return "$hours:$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 80.r,
          height: 80.r,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                value: progress.clamp(0.0, 1.0),
                color: AppColors.brown,
                backgroundColor: Colors.white.withOpacity(0.3),
                strokeWidth: 8,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'الفجر', // Change as needed for different prayers
                    style: TextStyle(
                      color: AppColors.brown,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('hh:mm a', 'ar').format(widget.prayerTime),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    '-${_formatDuration(remainingTime)}',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
