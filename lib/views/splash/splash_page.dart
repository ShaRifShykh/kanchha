import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kanchha/application/storage/local_storage.dart';
import 'package:kanchha/application/storage/storage_keys.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/path.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    LocalStorage.getItem(TOKEN).then((value) {
      Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(
            context, value != null ? homeRoute : signUpRoute
            // signUpRoute,
            ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Path.splashBg),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Image.asset(
            Path.logo,
          ),
        ),
      ),
    );
  }
}
