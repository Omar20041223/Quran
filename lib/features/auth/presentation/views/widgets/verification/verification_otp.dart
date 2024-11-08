import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/core/utils/colors.dart';
import 'package:quran/core/utils/styles.dart';
import 'package:quran/core/widgets/custom_button.dart';

class VerificationOtp extends StatefulWidget {
  const VerificationOtp({super.key});

  @override
  State<VerificationOtp> createState() => _VerificationOtpState();
}

class _VerificationOtpState extends State<VerificationOtp> {
  final List<TextEditingController> controllers = List.generate(6, (_) => TextEditingController());
  String? _errorMessage;

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  String? _validateOtp() {
    // Check if all fields are filled
    for (var controller in controllers) {
      if (controller.text.isEmpty) {
        return null; // Return null to indicate an error
      }
    }

    // Concatenate the values of each field to form the OTP
    return controllers.map((controller) => controller.text).join();
  }

  Color borderColor({required int index}) {
    if (_errorMessage != null && controllers[index].text.isEmpty) {
      return Colors.red;
    } else if (controllers[index].text.isEmpty) {
      return Colors.transparent;
    } else {
      return AppColors.brown;
    }
  }

  bool _areAllFieldsFilled() {
    return controllers.every((controller) => controller.text.isNotEmpty);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // RTL layout
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                width: 48.w,
                height: 48.h,
                child: TextFormField(
                  controller: controllers[index],
                  autofocus: index == 0,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  style: Styles.textStyle24W700Black,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: InputDecoration(
                    counterText: "",
                    filled: true,
                    fillColor: controllers[index].text.isEmpty ? const Color(0xffF0F8FF) : Colors.transparent,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(
                        color: borderColor(index: index),
                        width: 2.w,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.r),
                      borderSide: BorderSide(
                        color: AppColors.brown,
                        width: 2.w,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      if (_areAllFieldsFilled()) {
                        _errorMessage = null; // Clear error if all fields are filled
                      }
                    });
                    if (value.isNotEmpty && index < 5) {
                      FocusScope.of(context).nextFocus(); // Move to the next field
                    }
                  },
                ),
              );
            }),
          ),
          if (_errorMessage != null) // Display error message if any
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  _errorMessage!,
                  style: TextStyle(color: Colors.red, fontSize: 20.sp),
                ),
              ),
            ),
          48.verticalSpace,
          CustomButton(
            text: "تحقق",
            onPressed: () {
              setState(() {
                final otpCode = _validateOtp();
                if (otpCode == null) {
                  _errorMessage = 'يرجى ملء جميع الحقول';
                } else {
                  _errorMessage = null; // Clear error message
                  print("OTP Code: $otpCode"); // Use OTP code as needed
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
