import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kanchha/application/services/auth_service.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/common.dart';
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
  late String _countryCode;
  final TextEditingController _phoneNoController = TextEditingController();

  _loginUser() async {
    if (_phoneNoController.text.isNotEmpty && _countryCode != "") {
      await Provider.of<AuthService>(context, listen: false)
          .login(context, _countryCode + _phoneNoController.text)
          .then((value) {
        if (value != null) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            otpRoute,
            (route) => false,
          );
        }
      });
    } else {
      Common().bottomError(
        context,
        "Phone Code and Phone Number can't be empty!",
      );
    }
  }

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
              Expanded(
                flex: 2,
                child: CountryCodePicker(
                  flagWidth: 20,
                  alignLeft: true,
                  onChanged: (value) {
                    _countryCode = value.toString();
                  },
                ),
              ),
              Expanded(
                flex: 4,
                child: TextField(
                  controller: _phoneNoController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Mobile Number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
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
                  _loginUser();
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
