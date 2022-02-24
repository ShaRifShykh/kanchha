// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kanchha/application/kanchha_api.dart';
import 'package:kanchha/application/models/user.dart';
import 'package:kanchha/application/storage/local_storage.dart';
import 'package:kanchha/application/storage/storage_keys.dart';
import 'package:kanchha/router/route_constant.dart';
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

  Future login(BuildContext context, String phoneNumber) async {
    try {
      var res = await KanchhaApi.dio.post("auth/login", data: {
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

  Future resendOtp(BuildContext context) async {
    try {
      await KanchhaApi.dio.post(
        "auth/resend_otp",
        data: {"phoneNumber": user.phoneNumber},
      ).then((value) {
        if (value != null) {
          Common().success(
            context,
            "OTP sent successfully!",
          );
        }
      });
    } on DioError catch (e) {
      Common().bottomError(
        context,
        e.response!.data["errors"],
      );
    }
  }

  Future verifyOtp(BuildContext context, String otp) async {
    try {
      return KanchhaApi.dio.post("auth/verify_otp", data: {
        "phoneNumber": user.phoneNumber,
        "otp": otp,
      });
    } on DioError catch (e) {
      Common().bottomError(
        context,
        e.response!.data["errors"],
      );
      print(e);
    }
  }

  Future setName(BuildContext context, String fullName) async {
    try {
      return KanchhaApi.dio.post("auth/set_name", data: {
        "phoneNumber": user.phoneNumber,
        "fullName": fullName,
      });
    } on DioError catch (e) {
      Common().bottomError(
        context,
        e.response!.data["errors"],
      );
      print(e);
    }
  }

  Future logout(BuildContext context) async {
    try {
      await LocalStorage.getItem(TOKEN).then((value) {
        return KanchhaApi.dio
            .get(
          "auth/logout",
          options: Options(
            headers: {
              "Authorization": "Bearer $value",
            },
          ),
        )
            .then((value) {
          LocalStorage.clearAll();
          Navigator.pushNamed(context, signUpRoute);
        });
      });
    } on DioError catch (e) {
      print(e.response);
    }
  }

  Future getUser() async {
    try {
      String? token = await LocalStorage.getItem(TOKEN);
      var res = await KanchhaApi.dio.get(
        "auth/user",
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
      user = User.fromJson(res.data);
    } on DioError catch (e) {
      print(e.response);
    }
  }
}
