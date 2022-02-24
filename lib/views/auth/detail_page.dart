import 'package:flutter/material.dart';
import 'package:kanchha/application/services/auth_service.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/common.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/views/auth/auth_helper.dart';
import 'package:kanchha/widgets/main_btn.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  TextEditingController nameController = TextEditingController();

  _setName() async {
    if (nameController.text.isNotEmpty) {
      await Provider.of<AuthService>(context, listen: false)
          .setName(context, nameController.text)
          .then((value) {
        if (value != null) {
          Navigator.pushNamedAndRemoveUntil(
              context, homeRoute, (route) => false);
        }
      });
    } else {
      Common().bottomError(
        context,
        "Name can't be empty!",
      );
    }
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Provider.of<AuthHelper>(context, listen: false)
                .title("Enter Your Details"),
            Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter Your Name",
                  ),
                  Provider.of<AuthHelper>(context, listen: false).detailInput(
                    TextField(
                      controller: nameController,
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: MainBtn(
                      text: "Continue",
                      onPressed: () {
                        _setName();
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
