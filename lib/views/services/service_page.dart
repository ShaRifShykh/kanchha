import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/services/service_helper.dart';
import 'package:provider/provider.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        title: Text(
          "All Services",
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
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20.0),
          child: Column(
            children: [
              Provider.of<ServiceHelper>(context, listen: false).service(
                context,
                Path.yellowCard2,
                "Plumber",
                "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Integer et amet.",
                Path.yellowMan,
              ),
              const SizedBox(height: 25),
              Provider.of<ServiceHelper>(context, listen: false).service(
                context,
                Path.darkGreenCard,
                "Painters",
                "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Integer et amet.",
                Path.lightGreenMan,
              ),
              const SizedBox(height: 25),
              Provider.of<ServiceHelper>(context, listen: false).service(
                context,
                Path.skyBlueCard2,
                "Electricians",
                "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Integer et amet.",
                Path.skyBlueMan,
              ),
              const SizedBox(height: 25),
              Provider.of<ServiceHelper>(context, listen: false).service(
                context,
                Path.peachCard,
                "Steel Fabricators",
                "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Integer et amet.",
                Path.peachMan,
              ),
              const SizedBox(height: 25),
              Provider.of<ServiceHelper>(context, listen: false).service(
                context,
                Path.pinkCard,
                "Carpenters",
                "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Integer et amet.",
                Path.pinkMan,
              ),
              const SizedBox(height: 25),
              Provider.of<ServiceHelper>(context, listen: false).service(
                context,
                Path.darkGreenCard2,
                "Railings",
                "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Integer et amet.",
                Path.darkGreenMan,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
