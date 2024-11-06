import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_button.dart';

class RegisterButtonsForTapBar extends StatefulWidget {
  const RegisterButtonsForTapBar({super.key,required this.onIndexChanged});
  final ValueChanged<int> onIndexChanged;

  @override
  State<RegisterButtonsForTapBar> createState() => _RegisterButtonsForTapBarState();
}

class _RegisterButtonsForTapBarState extends State<RegisterButtonsForTapBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0.w, right: 6.w, top: 5.h, bottom: 5.h),
      decoration: BoxDecoration(
        color: const Color(0xffEDEEEF),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: "إنشاء حساب",
              borderRadius: BorderRadius.circular(10.r),
              backgroundColor: index == 0 ? Colors.white : Colors.transparent,
              textStyle: index == 0 ? Styles.textStyle16W600Brown : Styles.textStyle16W400Black,
              onPressed: (){
                setState(() {
                  index = 0;
                });
                widget.onIndexChanged(index);
              },
            ),
          ),
          Expanded(
            child: CustomButton(
              text: "تسجيل الدخول",
              borderRadius: BorderRadius.circular(10.r),
              backgroundColor: index == 1 ? Colors.white : Colors.transparent,
              textStyle: index == 1
                  ? Styles.textStyle16W600Brown
                  : Styles.textStyle16W400Black,
              onPressed: () {
                setState(() {
                  index = 1;
                });
                widget.onIndexChanged(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
