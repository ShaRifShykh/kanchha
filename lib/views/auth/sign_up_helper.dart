import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';

class SignUpHelper extends ChangeNotifier {
  Widget head(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height - 470,
      decoration: const BoxDecoration(
        color: ConstantColors.medium,
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "We Fix Your Day To Day Problems",
              style: TextStyle(
                color: ConstantColors.whiteColor,
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 40.0),
            Image.asset(
              Path.signUpVector,
            ),
          ],
        ),
      ),
    );
  }

  Widget title() {
    return const Padding(
      padding:
          EdgeInsets.only(left: 24.0, top: 35.0, bottom: 25.0, right: 20.0),
      child: Text(
        "Enter Your Mobile Number",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget input(BuildContext context, TextField textField) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 15,
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        decoration: BoxDecoration(
          color: ConstantColors.whiteColor,
          border: Border.all(
            color: ConstantColors.lightest,
          ),
          boxShadow: const [
            BoxShadow(
              color: ConstantColors.shadowColor,
            ),
            BoxShadow(
              color: ConstantColors.shadowColor,
              spreadRadius: -12.0,
              blurRadius: 22.0,
              offset: Offset(0, 4),
            ),
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: textField,
      ),
    );
  }

  Widget btn(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 15,
      decoration: BoxDecoration(
        color: ConstantColors.medium,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: const Center(
        child: Text(
          "Sign In / Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 17.0,
            color: ConstantColors.whiteColor,
          ),
        ),
      ),
    );
  }

  Widget orStyle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, right: 24.0, left: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.75,
            height: 1,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                color: ConstantColors.strokeColor,
              ),
            ),
          ),
          const Text(
            "Or",
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.75,
            height: 1,
            child: const DecoratedBox(
              decoration: BoxDecoration(
                color: ConstantColors.strokeColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget socialBtn(BuildContext context, Icon icon, String text) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.5,
      height: MediaQuery.of(context).size.height / 15,
      decoration: BoxDecoration(
        color: ConstantColors.whiteColor,
        border: Border.all(
          color: ConstantColors.strokeColor,
        ),
        boxShadow: const [
          BoxShadow(
            color: ConstantColors.shadowColor,
            spreadRadius: 0,
            blurRadius: 16.0,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            Text(
              text.toUpperCase(),
              style: const TextStyle(
                color: ConstantColors.blueColor,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget footerLinks(
      GestureRecognizer recognizerForTOS, GestureRecognizer recognizerForPP) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "By Signing up you accept the ",
          style: GoogleFonts.poppins(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: ConstantColors.black,
          ),
          children: [
            TextSpan(
              text: "Terms Of Service ",
              style: const TextStyle(
                color: ConstantColors.blueColor,
              ),
              recognizer: recognizerForTOS,
            ),
            const TextSpan(
              text: "and ",
            ),
            TextSpan(
              text: "Privacy Policy",
              style: const TextStyle(
                color: ConstantColors.blueColor,
              ),
              recognizer: recognizerForPP,
            )
          ],
        ),
      ),
    );
  }
}
