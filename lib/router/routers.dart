import 'package:flutter/material.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/views/account/account_page.dart';
import 'package:kanchha/views/auth/detail_page.dart';
import 'package:kanchha/views/auth/otp_page.dart';
import 'package:kanchha/views/auth/sign_in_page.dart';
import 'package:kanchha/views/auth/sign_up_page.dart';
import 'package:kanchha/views/bookings/bookings_page.dart';
import 'package:kanchha/views/checkout/checkout_page.dart';
import 'package:kanchha/views/extras/about_page.dart';
import 'package:kanchha/views/extras/help_page.dart';
import 'package:kanchha/views/extras/privacy_page.dart';
import 'package:kanchha/views/extras/tac_page.dart';
import 'package:kanchha/views/home/home_page.dart';
import 'package:kanchha/views/services/service_detail_page.dart';
import 'package:kanchha/views/services/service_page.dart';
import 'package:kanchha/views/services/single_service_page.dart';
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

      case detailRoute:
        return PageTransition(
            child: const DetailPage(), type: PageTransitionType.rightToLeft);

      // Main
      case homeRoute:
        return PageTransition(
            child: const HomePage(), type: PageTransitionType.rightToLeft);

      case servicesRoute:
        return PageTransition(
            child: const ServicePage(), type: PageTransitionType.rightToLeft);

      case singleServiceRoute:
        return PageTransition(
            child: const SingleServicePage(),
            type: PageTransitionType.rightToLeft);

      case serviceDetailRoute:
        return PageTransition(
            child: const ServiceDetailPage(),
            type: PageTransitionType.rightToLeft);

      case checkoutRoute:
        return PageTransition(
            child: const CheckoutPage(), type: PageTransitionType.rightToLeft);

      // Extras
      case accountRoute:
        return PageTransition(
            child: const AccountPage(), type: PageTransitionType.rightToLeft);

      case bookingsRoute:
        return PageTransition(
            child: const BookingsPage(), type: PageTransitionType.rightToLeft);

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
