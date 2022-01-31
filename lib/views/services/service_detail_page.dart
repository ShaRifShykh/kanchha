import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/services/service_detail_helper.dart';
import 'package:provider/provider.dart';

class ServiceDetailPage extends StatefulWidget {
  const ServiceDetailPage({Key? key}) : super(key: key);

  @override
  State<ServiceDetailPage> createState() => _ServiceDetailPageState();
}

class _ServiceDetailPageState extends State<ServiceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
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
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                Path.thumbnail,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 30.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Drainage Services",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      ),
                      Provider.of<ServiceDetailHelper>(context, listen: false)
                          .btn(
                        context,
                        () {
                          Navigator.pushNamed(context, checkoutRoute);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: ConstantColors.fontColor,
                        size: 20,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "4.78 (57.8K)",
                        style: GoogleFonts.poppins(
                          color: ConstantColors.fontColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Charges Rs.150",
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF4196F8),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "9 mins",
                    style: GoogleFonts.poppins(
                      color: ConstantColors.fontColor2,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Condimentum in urna, adipiscing non. Egestas ultrices ut Eu, sed massa lectus cras lorem massa massa enim",
                    style: GoogleFonts.poppins(
                      color: ConstantColors.fontColor,
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .title("Included"),
                  const SizedBox(height: 10),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .prosNCons(
                    context,
                    Path.icon3,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                  const SizedBox(height: 10),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .prosNCons(
                    context,
                    Path.icon3,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                  const SizedBox(height: 10),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .prosNCons(
                    context,
                    Path.icon3,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                  const SizedBox(height: 15),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .title("Excluded"),
                  const SizedBox(height: 10),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .prosNCons(
                    context,
                    Path.icon4,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                  const SizedBox(height: 10),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .prosNCons(
                    context,
                    Path.icon4,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                  const SizedBox(height: 10),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .prosNCons(
                    context,
                    Path.icon4,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Provider.of<ServiceDetailHelper>(context, listen: false)
                          .title("Reviews"),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "See All",
                          style: GoogleFonts.poppins(
                            fontSize: 15.0,
                            color: const Color(0xFF4196F8),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Provider.of<ServiceDetailHelper>(context, listen: false)
                      .reviews(
                    context,
                    "Lorem ipsum",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis ac, convallis posuere vulputate",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
