import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/bookings/booking_detail_helper.dart';
import 'package:provider/provider.dart';

class BookingDetailPage extends StatefulWidget {
  const BookingDetailPage({Key? key}) : super(key: key);

  @override
  State<BookingDetailPage> createState() => _BookingDetailPageState();
}

class _BookingDetailPageState extends State<BookingDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
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
          "Booking Details",
          style: GoogleFonts.poppins(
            color: ConstantColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .text(context, "Booking ID", "XXXXXXXXXXX"),
              const SizedBox(height: 15),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .text(context, "Service", "Drainage Services"),
              const SizedBox(height: 15),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .text(context, "Your Note", "I need pipe"),
              const SizedBox(height: 15),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .text(context, "Mobile No", "1234567890"),
              const SizedBox(height: 15),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .text(context, "Payment Method", "Cash on Delivery"),
              const SizedBox(height: 15),
              Provider.of<BookingDetailHelper>(context, listen: false).text(
                  context,
                  "Address",
                  "#0000, St No. 8, Shahid Karnail Singh Nagar"),
              const SizedBox(height: 15),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .text(context, "Status", "Booking Confirmed"),
              const SizedBox(height: 15),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .text(context, "Time and Date", "8 Mau 2021, 4PM - 8PM"),
              const SizedBox(height: 50),
              Text(
                "Service",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .serviceBar(
                context,
                Path.icon2,
                "Drainage Services",
                "Plumbing",
                "100",
              ),
              const SizedBox(height: 10.0),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .serviceBar(
                context,
                Path.icon1,
                "Drainage Services",
                "Plumbing",
                "100",
              ),
              const SizedBox(height: 30),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .budgetCalculate(
                "Item Total",
                "400",
              ),
              const SizedBox(height: 10),
              Provider.of<BookingDetailHelper>(context, listen: false)
                  .budgetCalculate(
                "Minimum Order Fee",
                "50",
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: const Color(0xFFD4D4D4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "₹ 450",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ConstantColors.medium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
