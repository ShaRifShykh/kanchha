import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/views/auth/sign_up_helper.dart';
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
            Provider.of<SignUpHelper>(context, listen: false).head(context),
            Provider.of<SignUpHelper>(context, listen: false).title(),
            Provider.of<SignUpHelper>(context, listen: false).input(
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
                  const EdgeInsets.only(left: 50.0, right: 50.0, top: 40.0),
              child: GestureDetector(
                onTap: () {},
                child: Provider.of<SignUpHelper>(context, listen: false)
                    .btn(context),
              ),
            ),
            Provider.of<SignUpHelper>(context, listen: false).orStyle(context),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, top: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Provider.of<SignUpHelper>(context, listen: false)
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
                    child: Provider.of<SignUpHelper>(context, listen: false)
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
            Provider.of<SignUpHelper>(context).footerLinks(
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
