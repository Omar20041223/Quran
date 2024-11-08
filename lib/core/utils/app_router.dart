import 'package:go_router/go_router.dart';
import 'package:quran/features/auth/presentation/views/forget_password_view.dart';
import 'package:quran/features/auth/presentation/views/register_view.dart';
import 'package:quran/features/auth/presentation/views/verification_success_view.dart';
import 'package:quran/features/home/presentations/views/home_view.dart';
import '../../features/auth/presentation/views/verification_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashScreen = '/splashScreen';
  static const kOnboardingView = '/onboardingView';
  static const kRegisterView = '/registerView';
  static const kForgetPasswordView = '/forgetPasswordView';
  static const kVerificationView = '/verificationView';
  static const kVerificationSuccessView = '/verificationSuccessView';
  static const kHomeView = '/homeView';


  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: '/onboardingView', builder: (context, state) => const OnboardingView()),
    GoRoute(path: '/registerView', builder: (context, state) => const RegisterView()),
    GoRoute(path: '/forgetPasswordView', builder: (context, state) => const ForgetPasswordView()),
    GoRoute(path: '/verificationView', builder: (context, state) => const VerificationView()),
    GoRoute(path: '/verificationSuccessView', builder: (context, state) => const VerificationSuccessView()),
    GoRoute(path: '/homeView', builder: (context, state) => const HomeView()),
  ]);
}
