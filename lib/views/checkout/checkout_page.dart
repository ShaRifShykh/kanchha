import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/checkout/checkout_helper.dart';
import 'package:kanchha/widgets/main_btn.dart';
import 'package:provider/provider.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.bgColor,
        title: Text(
          "Checkout",
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
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Provider.of<CheckoutHelper>(context, listen: false)
                  .title("Service"),
              const SizedBox(height: 20.0),
              Provider.of<CheckoutHelper>(context, listen: false).serviceBar(
                context,
                Path.icon2,
                "Drainage Services",
                "Plumbing",
                "100",
              ),
              const SizedBox(height: 10.0),
              Provider.of<CheckoutHelper>(context, listen: false).serviceBar(
                context,
                Path.icon1,
                "Drainage Services",
                "Plumbing",
                "100",
              ),
              const SizedBox(height: 35.0),
              Provider.of<CheckoutHelper>(context, listen: false)
                  .title("Your Note"),
              const SizedBox(height: 15.0),
              Provider.of<CheckoutHelper>(context, listen: false).inputStyle(
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Write Instructions for your Service, if any.",
                    hintStyle: GoogleFonts.poppins(
                      color: ConstantColors.medium,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              Provider.of<CheckoutHelper>(context, listen: false)
                  .title("Add Images"),
              const SizedBox(height: 25.0),
              Provider.of<CheckoutHelper>(context, listen: false)
                  .addImageBtn(context),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: ConstantColors.fontColor,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: ConstantColors.fontColor,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25.0),
              Provider.of<CheckoutHelper>(context, listen: false)
                  .title("Please select your preferable slot"),
              const SizedBox(height: 20.0),
              Provider.of<CheckoutHelper>(context, listen: false).radioBtn(
                Radio(
                  value: 0,
                  groupValue: 0,
                  onChanged: (value) {},
                  activeColor: const Color(0xFF13549F),
                ),
                "8AM - 12AM",
              ),
              const SizedBox(height: 10.0),
              Provider.of<CheckoutHelper>(context, listen: false).radioBtn(
                Radio(
                  value: 1,
                  groupValue: 0,
                  onChanged: (value) {},
                  activeColor: const Color(0xFF13549F),
                ),
                "12AM - 4PM",
              ),
              const SizedBox(height: 10.0),
              Provider.of<CheckoutHelper>(context, listen: false).radioBtn(
                Radio(
                  value: 2,
                  groupValue: 0,
                  onChanged: (value) {},
                  activeColor: const Color(0xFF13549F),
                ),
                "4PM - 8PM",
              ),
              const SizedBox(height: 25.0),
              Provider.of<CheckoutHelper>(context, listen: false)
                  .title("Please select date slots"),
              const SizedBox(height: 20.0),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ConstantColors.medium,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Choose Date",
                  style: GoogleFonts.poppins(
                    color: ConstantColors.medium,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 35.0),
              Provider.of<CheckoutHelper>(context, listen: false).offerNCoupon(
                () {
                  Navigator.pushNamed(context, couponRoute);
                },
                Path.icon5,
                "Avail Offers / Coupon",
              ),
              const SizedBox(height: 50.0),
              Provider.of<CheckoutHelper>(context, listen: false).footerTotal(
                "Item Total",
                "400",
              ),
              const SizedBox(height: 10.0),
              Provider.of<CheckoutHelper>(context, listen: false).footerTotal(
                "Minimum Order Fee",
                "50",
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 5),
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
                      color: const Color(0xFF505050),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Rs 450",
                    style: GoogleFonts.poppins(
                      color: ConstantColors.medium,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              MainBtn(
                text: "Choose a Delivery Address",
                onPressed: () {
                  Navigator.pushNamed(context, chooseDeliveryRoute);
                },
              ),
              const SizedBox(height: 20.0),
              MainBtn(
                text: "Make Payment",
                onPressed: () {
                  Navigator.pushNamed(context, makePaymentRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
