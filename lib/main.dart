import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/application/services/auth_service.dart';
import 'package:kanchha/application/storage/local_storage.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/router/routers.dart';
import 'package:kanchha/values/branding_color.dart';
import 'package:kanchha/views/account/account_helper.dart';
import 'package:kanchha/views/address/choose_address_helper.dart';
import 'package:kanchha/views/auth/auth_helper.dart';
import 'package:kanchha/views/bookings/booking_detail_helper.dart';
import 'package:kanchha/views/bookings/bookings_helper.dart';
import 'package:kanchha/views/checkout/checkout_helper.dart';
import 'package:kanchha/views/checkout/coupon_helper.dart';
import 'package:kanchha/views/extras/extra_helper.dart';
import 'package:kanchha/views/home/home_helper.dart';
import 'package:kanchha/views/payment/make_payment_helper.dart';
import 'package:kanchha/views/services/service_detail_helper.dart';
import 'package:kanchha/views/services/service_helper.dart';
import 'package:kanchha/views/services/single_service_helper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const KanchhaApp());
}

class KanchhaApp extends StatelessWidget {
  const KanchhaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => AuthHelper()),
        ChangeNotifierProvider(create: (_) => ExtraHelper()),
        ChangeNotifierProvider(create: (_) => HomeHelper()),
        ChangeNotifierProvider(create: (_) => ServiceHelper()),
        ChangeNotifierProvider(create: (_) => SingleServiceHelper()),
        ChangeNotifierProvider(create: (_) => ServiceDetailHelper()),
        ChangeNotifierProvider(create: (_) => AccountHelper()),
        ChangeNotifierProvider(create: (_) => BookingsHelper()),
        ChangeNotifierProvider(create: (_) => BookingDetailHelper()),
        ChangeNotifierProvider(create: (_) => CheckoutHelper()),
        ChangeNotifierProvider(create: (_) => CouponHelper()),
        ChangeNotifierProvider(create: (_) => ChooseAddressHelper()),
        ChangeNotifierProvider(create: (_) => MakePaymentHelper()),
      ],
      child: MaterialApp(
        supportedLocales: const [
          Locale('en', 'US'),
        ],
        localizationsDelegates: const [
          CountryLocalizations.delegate,
        ],
        title: 'Kanchha',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          primarySwatch: brandingColor,
        ),
        onGenerateRoute: Routers.onGenerateRoute,
        initialRoute: splashRoute,
      ),
    );
  }
}
