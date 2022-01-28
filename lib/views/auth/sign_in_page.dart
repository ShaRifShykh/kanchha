import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/views/auth/auth_helper.dart';
import 'package:kanchha/widgets/main_btn.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.bgColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ConstantColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Provider.of<AuthHelper>(context, listen: false)
                .title("Enter Your Mobile Number"),
            Provider.of<AuthHelper>(context, listen: false).input(
              context,
              const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter Mobile Number",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 40.0, right: 40.0, top: 40.0),
              child: MainBtn(
                text: "Sign In",
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    otpRoute,
                    (route) => false,
                  );
                },
              ),
            ),
            Provider.of<AuthHelper>(context).footerLinks(
              TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, tacRoute);
                },
              TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, ppRoute);
                },
            ),
          ],
        ),
      ),
    );
  }
}
