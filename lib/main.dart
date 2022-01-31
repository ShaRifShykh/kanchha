import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/router/routers.dart';
import 'package:kanchha/values/branding_color.dart';
import 'package:kanchha/views/account/account_helper.dart';
import 'package:kanchha/views/auth/auth_helper.dart';
import 'package:kanchha/views/bookings/bookings_helper.dart';
import 'package:kanchha/views/checkout/checkout_helper.dart';
import 'package:kanchha/views/extras/extra_helper.dart';
import 'package:kanchha/views/home/home_helper.dart';
import 'package:kanchha/views/services/service_detail_helper.dart';
import 'package:kanchha/views/services/service_helper.dart';
import 'package:kanchha/views/services/single_service_helper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const KanchhaApp());
}

class KanchhaApp extends StatelessWidget {
  const KanchhaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthHelper()),
        ChangeNotifierProvider(create: (_) => ExtraHelper()),
        ChangeNotifierProvider(create: (_) => HomeHelper()),
        ChangeNotifierProvider(create: (_) => ServiceHelper()),
        ChangeNotifierProvider(create: (_) => SingleServiceHelper()),
        ChangeNotifierProvider(create: (_) => ServiceDetailHelper()),
        ChangeNotifierProvider(create: (_) => AccountHelper()),
        ChangeNotifierProvider(create: (_) => BookingsHelper()),
        ChangeNotifierProvider(create: (_) => CheckoutHelper()),
      ],
      child: MaterialApp(
        title: 'Kanchha',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          primarySwatch: brandingColor,
        ),
        onGenerateRoute: Routers.onGenerateRoute,
        initialRoute: homeRoute,
      ),
    );
  }
}
