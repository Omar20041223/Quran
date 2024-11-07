import 'package:flutter/material.dart';
import 'package:quran/features/auth/presentation/views/widgets/verification/verification_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: VerificationBody(),
      ),
    );
  }
}
