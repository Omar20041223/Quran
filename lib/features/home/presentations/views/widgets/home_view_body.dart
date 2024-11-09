import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_ayah_and_7adeeth_conatiner.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_buttons.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_header.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_step_indicator.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_stopped_surah_container.dart';
import 'package:quran/features/home/presentations/views/widgets/home_view_tail.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HomeViewHeader(),
          12.verticalSpace,
          const HomeViewStepIndicator(),
          28.verticalSpace,
          const HomeViewButtons(),
          24.verticalSpace,
          const HomeViewStoppedSurahContainer(),
          24.verticalSpace,
          const HomeViewAyahAnd7adeethConatiner(title: 'آية اليوم', desc: ' أَلَمۡ یَأۡنِ لِلَّذِینَ ءَامَنُوۤا۟ أَن تَخۡشَعَ قُلُوبُهُمۡ لِذِكۡرِ ٱللَّهِ وَمَا نَزَلَ مِنَ ٱلۡحَقِّ وَلَا یَكُونُوا۟ كَٱلَّذِینَ أُوتُوا۟ ٱلۡكِتَـٰبَ مِن قَبۡلُ فَطَالَ عَلَیۡهِمُ ٱلۡأَمَدُ فَقَسَتۡ قُلُوبُهُمۡۖ وَكَثِیرࣱ مِّنۡهُمۡ فَـٰسِقُونَ﴾',),
          24.verticalSpace,
          const HomeViewAyahAnd7adeethConatiner(title: 'حديث اليوم', desc: 'قال رسول الله صلى الله عليه وسلم: (إنَّ مِن أحبِّكم إليَّ وأقربِكُم منِّي مجلسًا يومَ القيامةِ أحاسنَكُم أخلاقًا)',),
          24.verticalSpace,
          const HomeViewTail(),
          110.verticalSpace
        ],
      ),
    );
  }
}
