import 'package:go_router/go_router.dart';
import 'package:quran/features/auth/presentation/views/forget_password_view.dart';
import 'package:quran/features/auth/presentation/views/register_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kSplashScreen = '/splashScreen';
  static const kOnboardingView = '/onboardingView';
  static const kRegisterView = '/registerView';
  static const kForgetPasswordView = '/forgetPasswordView';

  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: '/onboardingView', builder: (context, state) => const OnboardingView()),
    GoRoute(path: '/registerView', builder: (context, state) => const RegisterView()),
    GoRoute(path: '/forgetPasswordView', builder: (context, state) => const ForgetPasswordView()),
  ]);
}
