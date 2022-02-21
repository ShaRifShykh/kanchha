import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/widgets/main_btn.dart';

class BookingConfirmationPage extends StatefulWidget {
  const BookingConfirmationPage({Key? key}) : super(key: key);

  @override
  State<BookingConfirmationPage> createState() =>
      _BookingConfirmationPageState();
}

class _BookingConfirmationPageState extends State<BookingConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Path.bookingConfirm,
                  ),
                  const SizedBox(height: 40.0),
                  Text(
                    "Booking Confirmed",
                    style: GoogleFonts.poppins(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    "We Have Received Your Booking and Will Update your Service Slot Soon !!!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: const Color(0xFF7C7C7C),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 6),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, homeRoute);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ConstantColors.medium,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: const Center(
                        child: Text(
                          "Back To Home",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0,
                            color: ConstantColors.medium,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  MainBtn(
                    text: "Booking Details",
                    onPressed: () {
                      Navigator.pushNamed(context, bookingDetailRoute);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
