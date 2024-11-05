import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/core/utils/app_router.dart';
import 'package:quran/core/widgets/custom_image.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRouter.kOnboardingView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomImage(url: "assets/images/splash_image.png"),
    );
  }
}
