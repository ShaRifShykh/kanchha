import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/views/auth/auth_helper.dart';
import 'package:kanchha/widgets/main_btn.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Provider.of<AuthHelper>(context, listen: false).head(context),
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
                text: "Sign Up",
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    otpRoute,
                    (route) => false,
                  );
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 40.0, right: 40.0, top: 15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, signInRoute);
                },
                child: Provider.of<AuthHelper>(context, listen: false)
                    .signInbtn(context),
              ),
            ),
            Provider.of<AuthHelper>(context, listen: false).orStyle(context),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Provider.of<AuthHelper>(context, listen: false)
                        .socialBtn(
                      context,
                      const Icon(
                        FontAwesomeIcons.google,
                        color: Colors.red,
                      ),
                      "Google",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Provider.of<AuthHelper>(context, listen: false)
                        .socialBtn(
                      context,
                      const Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                      "Facebook",
                    ),
                  ),
                ],
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
