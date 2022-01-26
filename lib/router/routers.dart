import 'package:flutter/material.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/views/auth/otp_page.dart';
import 'package:kanchha/views/auth/sign_in_page.dart';
import 'package:kanchha/views/auth/sign_up_page.dart';
import 'package:kanchha/views/extras/about_page.dart';
import 'package:kanchha/views/extras/help_page.dart';
import 'package:kanchha/views/extras/privacy_page.dart';
import 'package:kanchha/views/extras/tac_page.dart';
import 'package:kanchha/views/splash/splash_page.dart';
import 'package:page_transition/page_transition.dart';

class Routers {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());

      // Auth
      case signUpRoute:
        return PageTransition(
            child: const SignUpPage(), type: PageTransitionType.rightToLeft);

      case signInRoute:
        return PageTransition(
            child: const SignInPage(), type: PageTransitionType.rightToLeft);

      case otpRoute:
        return PageTransition(
            child: const OtpPage(), type: PageTransitionType.rightToLeft);

      // Extras
      case aboutRoute:
        return PageTransition(
            child: const AboutPage(), type: PageTransitionType.rightToLeft);

      case ppRoute:
        return PageTransition(
            child: const PrivacyPolicyPage(),
            type: PageTransitionType.rightToLeft);

      case tacRoute:
        return PageTransition(
            child: const TermsAndConditionsPage(),
            type: PageTransitionType.rightToLeft);

      case helpRoute:
        return PageTransition(
            child: const HelpPage(), type: PageTransitionType.rightToLeft);

      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
