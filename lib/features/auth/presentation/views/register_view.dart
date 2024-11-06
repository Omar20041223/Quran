import 'package:flutter/material.dart';
import 'package:quran/features/auth/presentation/views/widgets/register_body.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: RegisterBody(),
      ),
    );
  }
}
