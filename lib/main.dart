import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/router/routers.dart';
import 'package:kanchha/values/branding_color.dart';
import 'package:kanchha/views/auth/auth_helper.dart';
import 'package:kanchha/views/extras/extra_helper.dart';
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
      ],
      child: MaterialApp(
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
