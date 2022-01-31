import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/bookings/bookings_helper.dart';
import 'package:provider/provider.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({Key? key}) : super(key: key);

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor2,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
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
          "My Bookings",
          style: GoogleFonts.poppins(
            color: ConstantColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Provider.of<BookingsHelper>(context, listen: false).bookings(
                context,
                Path.icon2,
                "Drainage Services",
                "1 May, 2020",
                () {},
              ),
              const SizedBox(height: 15),
              Provider.of<BookingsHelper>(context, listen: false).bookings(
                context,
                Path.icon1,
                "Installation And Repairment",
                "1 May, 2020",
                () {},
              ),
              const SizedBox(height: 15),
              Provider.of<BookingsHelper>(context, listen: false).bookings(
                context,
                Path.icon2,
                "Drainage Services",
                "1 May, 2020",
                () {},
              ),
              const SizedBox(height: 15),
              Provider.of<BookingsHelper>(context, listen: false).bookings(
                context,
                Path.icon1,
                "Installation And Repairment",
                "1 May, 2020",
                () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
