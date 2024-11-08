import 'package:flutter/material.dart';
import 'package:quran/features/auth/presentation/views/widgets/verification_success/verification_success_body.dart';

class VerificationSuccessView extends StatelessWidget {
  const VerificationSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: VerificationSuccessBody(),
      ),
    );
  }
}
