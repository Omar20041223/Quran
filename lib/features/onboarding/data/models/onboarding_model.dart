class OnboardingModel{
  final String title;
  final String description;
  final String image;

  OnboardingModel({required this.title, required this.description, required this.image});
}


List<OnboardingModel> onboardingList = [
  OnboardingModel(
    title: 'حافظ على التحفيز',
    description: 'استلم تذكيرات يومية وآيات ملهمة تبقيك متصلاً بالقرآن.',
    image: 'assets/images/onboarding1.png',
  ),
  OnboardingModel(
    title: 'خطط مخصصة',
    description: 'ضع أهدافك الخاصة وتلقَّ تذكيرات مخصصة لتبقى على المسار.',
    image: 'assets/images/onboarding2.png',
  ),
  OnboardingModel(
    title: 'مرحباً!',
    description: 'ابدأ رحلتك في حفظ القرآن بسهولة وبالوتيرة التي تناسبك.',
    image: 'assets/images/onboarding3.png',
  ),
];