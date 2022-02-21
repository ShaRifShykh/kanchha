// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/application/kanchha_api.dart';
import 'package:kanchha/application/models/user.dart';
import 'package:kanchha/values/common.dart';

class AuthService extends ChangeNotifier {
  late User user;

  Future register(BuildContext context, String phoneNumber) async {
    try {
      var res = await KanchhaApi.dio.post("auth/register", data: {
        "phoneNumber": phoneNumber,
      });

      user = User.fromJson(res.data);

      return User.fromJson(res.data);
    } on DioError catch (e) {
      Common().bottomError(
        context,
        e.response!.data["errors"].toString(),
      );
    }
  }

  Future verifyOtp(BuildContext context, String otp) async {
    try {
      print(user.phoneNumber);
      var res = await KanchhaApi.dio.post("auth/verify_otp", data: {
        "phoneNumber": user.phoneNumber,
        "otp": otp,
      });

      print(res.data);
    } on DioError catch (e) {
      Common().bottomError(
        context,
        e.response.toString(),
      );
      print(e);
    }
  }
}
