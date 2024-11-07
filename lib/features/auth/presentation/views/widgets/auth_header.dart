import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/styles.dart';
class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, required this.title, required this.description});
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      children: [
        Align(alignment: Alignment.topRight,child: Text(title,style: Styles.textStyle24W500Brown)),
        24.verticalSpace,
        Align(alignment: Alignment.topRight,child: Text(textAlign: TextAlign.end,description,style: Styles.textStyle14W400LightGrey,)),
      ],
    );
  }
}
