import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/payment/make_payment_helper.dart';
import 'package:kanchha/widgets/main_btn.dart';
import 'package:provider/provider.dart';

class MakePaymentPage extends StatefulWidget {
  const MakePaymentPage({Key? key}) : super(key: key);

  @override
  State<MakePaymentPage> createState() => _MakePaymentPageState();
}

class _MakePaymentPageState extends State<MakePaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        title: Text(
          "Make Payment",
          style: GoogleFonts.poppins(
            color: ConstantColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ConstantColors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cards",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              Provider.of<MakePaymentHelper>(context, listen: false).cards(
                () {},
                Path.icon11,
                "Khalti",
              ),
              const SizedBox(height: 20),
              Provider.of<MakePaymentHelper>(context, listen: false).cards(
                () {},
                Path.icon10,
                "E-Seva",
              ),
              const SizedBox(height: 20),
              Text(
                "COD",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              Provider.of<MakePaymentHelper>(context, listen: false).cod(() {}),
              const SizedBox(height: 30),
              MainBtn(
                text: "Proceed",
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, bookingConfirmationRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
