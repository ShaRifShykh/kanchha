import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kanchha/application/services/auth_service.dart';
import 'package:kanchha/application/storage/local_storage.dart';
import 'package:kanchha/application/storage/storage_keys.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/common.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/views/auth/auth_helper.dart';
import 'package:kanchha/widgets/main_btn.dart';
import 'package:provider/provider.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();

  late Timer _timer;
  int _start = 30;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  _verifyOtp() async {
    if (otp1.text.isNotEmpty &&
        otp2.text.isNotEmpty &&
        otp3.text.isNotEmpty &&
        otp4.text.isNotEmpty &&
        otp5.text.isNotEmpty) {
      await Provider.of<AuthService>(context, listen: false)
          .verifyOtp(context,
              otp1.text + otp2.text + otp3.text + otp4.text + otp5.text)
          .then((value) async {
        if (value != null) {
          String accessToken = value.data["accessToken"];
          String expiresAt = value.data["expiresAt"];

          await LocalStorage.setItem(TOKEN, accessToken);
          await LocalStorage.setItem(TOKEN_EXPIRATION, expiresAt);

          if (Provider.of<AuthService>(context, listen: false).user.fullName !=
              "") {
            Navigator.pushNamedAndRemoveUntil(
              context,
              homeRoute,
              (route) => false,
            );
          } else {
            Navigator.pushNamedAndRemoveUntil(
              context,
              detailRoute,
              (route) => false,
            );
          }
        }
      });
    } else {
      Common().bottomError(
        context,
        "OTP can't be empty!",
      );
    }
  }

  _resendOtp() async {
    if (_start <= 0) {
      await Provider.of<AuthService>(context, listen: false).resendOtp(context);
      setState(() {
        _start = 30;
      });
      startTimer();
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Provider.of<AuthHelper>(context, listen: false)
                  .title("Enter The OTP"),
              Provider.of<AuthHelper>(context, listen: false).otpSubTitle(
                "Your OTP has been send to ${Provider.of<AuthService>(context, listen: false).user.phoneNumber} Number",
              ),
              Row(
                children: [
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    Provider.of<AuthHelper>(context, listen: false).otpInputs(
                      context,
                      otp1,
                      true,
                      false,
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    Provider.of<AuthHelper>(context, listen: false).otpInputs(
                      context,
                      otp2,
                      false,
                      false,
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    Provider.of<AuthHelper>(context, listen: false).otpInputs(
                      context,
                      otp3,
                      false,
                      false,
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    Provider.of<AuthHelper>(context, listen: false).otpInputs(
                      context,
                      otp4,
                      false,
                      false,
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    Provider.of<AuthHelper>(context, listen: false).otpInputs(
                      context,
                      otp5,
                      false,
                      true,
                    ),
                  ),
                ],
              ),
              Provider.of<AuthHelper>(context, listen: false).otpGetAgain(() {
                _resendOtp();
              }),
              Provider.of<AuthHelper>(context, listen: false)
                  .otpCountDown("00:$_start"),
              Provider.of<AuthHelper>(context, listen: false).otpError(),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: MainBtn(
                  text: "Continue",
                  onPressed: () {
                    _verifyOtp();
                    // Navigator.pushNamedAndRemoveUntil(
                    //     context, detailRoute, (route) => false);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget otpInputs(BuildContext context, bool first, bool last) {
  return TextField(
    autofocus: true,
    onChanged: (value) {
      if (value.length == 1 && last == false) {
        FocusScope.of(context).nextFocus();
      }
      if (value.isEmpty && first == false) {
        FocusScope.of(context).previousFocus();
      }
    },
    readOnly: false,
    textAlign: TextAlign.center,
    keyboardType: TextInputType.number,
    maxLength: 1,
    decoration: const InputDecoration(
      counter: Offstage(),
      border: InputBorder.none,
    ),
  );
}
