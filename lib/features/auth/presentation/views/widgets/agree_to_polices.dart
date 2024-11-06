import 'package:flutter/material.dart';
import 'package:quran/core/utils/styles.dart';
import '../../../../../core/utils/colors.dart';

class AgreeToPolicies extends FormField<bool> {
  AgreeToPolicies({
    super.key,
    super.onSaved,
    super.validator,
    bool super.initialValue = false,
    AutovalidateMode super.autovalidateMode = AutovalidateMode.disabled,
  }) : super(
    builder: (FormFieldState<bool> state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            textDirection: TextDirection.rtl,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.scale(
                scale: 1.4, // Adjust the scale factor for the checkbox size
                child: Checkbox(
                  value: state.value ?? false,
                  onChanged: (bool? newValue) {
                    state.didChange(newValue ?? false);
                  },
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                  side: BorderSide(
                    color: state.hasError ? Colors.red : AppColors.lightGrey,
                    width: 1,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'أوافق على ',
                          style: Styles.textStyle14W400LightGrey,
                        ),
                        TextSpan(
                          text: 'شروط خدمة',
                          style: Styles.textStyle14W400Brown,
                        ),
                        TextSpan(
                          text: ' المنصة و ',
                          style: Styles.textStyle14W400LightGrey,
                        ),
                        TextSpan(
                          text: 'سياسة الخصوصية',
                          style: Styles.textStyle14W400Brown,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          if (state.hasError)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                state.errorText!,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                ),
              ),
            ),
        ],
      );
    },
  );
}
