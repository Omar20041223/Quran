import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/utils/styles.dart';

class VerificationTail extends StatelessWidget {
  const VerificationTail({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'لم تستلم الرمز؟',
            style: Styles.textStyle16W400DarkGrey,
          ),
          TextSpan(
            text: ' إعادة ارسال',
            style: Styles.textStyle18W400Brown,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
