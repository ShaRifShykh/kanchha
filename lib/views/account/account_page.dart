import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/application/services/auth_service.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/views/account/account_helper.dart';
import 'package:provider/provider.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  getUserData() async {
    if (Provider.of<AuthService>(context, listen: false).user == null) {
      setState(() {
        _isLoading = true;
      });
      await Provider.of<AuthService>(context, listen: false).getUser();
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor2,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
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
        title: Text(
          "My Account",
          style: GoogleFonts.poppins(
            color: ConstantColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Provider.of<AccountHelper>(context, listen: false).header(
                    Provider.of<AuthService>(context, listen: false)
                        .user
                        .phoneNumber,
                    () {},
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 18,
                    color: const Color(0xFFF2F2F2),
                  ),
                  Provider.of<AccountHelper>(context, listen: false).section(
                    "Name",
                    () {},
                    Provider.of<AuthService>(context, listen: false)
                        .user
                        .fullName,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 10,
                    color: const Color(0xFFF2F2F2),
                  ),
                  Provider.of<AccountHelper>(context, listen: false).section(
                    "Email Address",
                    () {},
                    Provider.of<AuthService>(context, listen: false).user.email,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 10,
                    color: const Color(0xFFF2F2F2),
                  ),
                  Provider.of<AccountHelper>(context, listen: false).section(
                    "Phone Number",
                    () {},
                    Provider.of<AuthService>(context, listen: false)
                        .user
                        .phoneNumber,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 10,
                    color: const Color(0xFFF2F2F2),
                  ),
                ],
              ),
            ),
    );
  }
}
