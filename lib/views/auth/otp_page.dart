import 'package:flutter/material.dart';
import 'package:kanchha/router/route_constant.dart';
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
                "Your OTP has been send to +91 7350****10 Number",
              ),
              Row(
                children: [
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Provider.of<AuthHelper>(context, listen: false).otpTxt(
                    const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              Provider.of<AuthHelper>(context, listen: false).otpGetAgain(),
              Provider.of<AuthHelper>(context, listen: false)
                  .otpCountDown("00:34"),
              Provider.of<AuthHelper>(context, listen: false).otpError(),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: MainBtn(
                  text: "Continue",
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, detailRoute, (route) => false);
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
