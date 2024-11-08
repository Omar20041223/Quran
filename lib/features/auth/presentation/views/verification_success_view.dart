import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/features/auth/presentation/views/widgets/verification_success/verification_success_body.dart';
import '../../../../core/utils/app_router.dart';

class VerificationSuccessView extends StatefulWidget {
  const VerificationSuccessView({super.key});

  @override
  State<VerificationSuccessView> createState() => _VerificationSuccessViewState();
}

class _VerificationSuccessViewState extends State<VerificationSuccessView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );

    // Set up fade animation
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    // Start the animation
    _controller.forward();

    // Start a timer to navigate after 3 seconds
    Timer(const Duration(milliseconds: 3000), () {
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: FadeTransition(
          opacity: _fadeAnimation,
          child: const VerificationSuccessBody(),
        ),
      ),
    );
  }
}
