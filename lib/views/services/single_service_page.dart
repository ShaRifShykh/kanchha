import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/services/single_service_helper.dart';
import 'package:provider/provider.dart';

class SingleServicePage extends StatefulWidget {
  const SingleServicePage({Key? key}) : super(key: key);

  @override
  State<SingleServicePage> createState() => _SingleServicePageState();
}

class _SingleServicePageState extends State<SingleServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: ConstantColors.bgColor,
        title: Text(
          "Plumbing",
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
            children: [
              Provider.of<SingleServiceHelper>(context, listen: false)
                  .singleService(
                context,
                "Drainage Services",
                "4.5",
                "20",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                () {
                  Navigator.pushNamed(context, serviceDetailRoute);
                },
                Path.thumbnail2,
                () {
                  Navigator.pushNamed(context, checkoutRoute);
                },
              ),
              const SizedBox(height: 15),
              Provider.of<SingleServiceHelper>(context, listen: false)
                  .singleService(
                context,
                "Drainage Services",
                "4.5",
                "20",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                () {
                  Navigator.pushNamed(context, serviceDetailRoute);
                },
                Path.thumbnail2,
                () {
                  Navigator.pushNamed(context, checkoutRoute);
                },
              ),
              const SizedBox(height: 15),
              Provider.of<SingleServiceHelper>(context, listen: false)
                  .singleService(
                context,
                "Drainage Services",
                "4.5",
                "20",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                () {
                  Navigator.pushNamed(context, serviceDetailRoute);
                },
                Path.thumbnail2,
                () {
                  Navigator.pushNamed(context, checkoutRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
