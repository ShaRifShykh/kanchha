import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';

class AuthHelper extends ChangeNotifier {
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

  Widget title(String title) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 24.0, top: 35.0, bottom: 25.0, right: 20.0),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18.0,
        ),
      ),
    );
  }

  Widget input(
      BuildContext context, Widget countryTextField, Widget textField) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 15,
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
        child: Row(
          children: [
            countryTextField,
            textField,
          ],
        ),
      ),
    );
  }

  Widget signInbtn(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
      child: const Center(
        child: Text(
          "Sign In",
          style: TextStyle(
            color: ConstantColors.blueColor,
            fontWeight: FontWeight.w600,
            fontSize: 17,
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
            color: ConstantColors.fontColor2,
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

  // OTP Page
  Widget otpTxt(Widget textField) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(vertical: 2),
        decoration: BoxDecoration(
          border: Border.all(
            color: ConstantColors.strokeColor2,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: textField,
      ),
    );
  }

  Widget otpInputs(
    BuildContext context,
    TextEditingController editingController,
    bool first,
    bool last,
  ) {
    return TextField(
      controller: editingController,
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

  Widget otpSubTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Text(
        text,
        style: const TextStyle(
          color: ConstantColors.fontColor3,
          fontSize: 15.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget otpGetAgain() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text(
            "Resend OTP",
            style: TextStyle(
              fontSize: 15.0,
              color: ConstantColors.fontColor2,
            ),
          ),
        ],
      ),
    );
  }

  Widget otpCountDown(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22.0,
          color: ConstantColors.blueColor,
        ),
      ),
    );
  }

  Widget otpError() {
    return const Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Text(
        "Didn't Get it?",
        style: TextStyle(
          fontSize: 16.0,
          color: ConstantColors.black,
        ),
      ),
    );
  }

  // Detail Page
  Widget detailInput(TextField textField) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0, bottom: 60.0),
      padding: const EdgeInsets.only(
        left: 10,
        top: 3,
        bottom: 3,
        right: 10.0,
      ),
      decoration: BoxDecoration(
        color: ConstantColors.light,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: textField,
    );
  }
}
