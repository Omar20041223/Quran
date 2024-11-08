import 'package:flutter/material.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_header.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HomeViewHeader()
        ],
      ),
    );
  }
}
