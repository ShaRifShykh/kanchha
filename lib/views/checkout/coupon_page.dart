import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/checkout/coupon_helper.dart';
import 'package:provider/provider.dart';

class CouponPage extends StatefulWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  State<CouponPage> createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        title: Text(
          "Avail Offers / Coupon",
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Provider.of<CouponHelper>(context, listen: false).coupons(
                context,
                "50",
                Path.icon6,
                "Get Flat 50% Discount Upto ₹100 on Your First Order!",
                "0XD-SWFS",
                () {},
              ),
              const SizedBox(height: 20),
              Provider.of<CouponHelper>(context, listen: false).coupons(
                context,
                "50",
                Path.icon7,
                "Get Flat 50% Discount Upto ₹100 on Your First Order!",
                "0XD-SWFS",
                () {},
              ),
              const SizedBox(height: 20),
              Provider.of<CouponHelper>(context, listen: false).coupons(
                context,
                "50",
                Path.icon8,
                "Get Flat 50% Discount Upto ₹100 on Your First Order!",
                "0XD-SWFS",
                () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
