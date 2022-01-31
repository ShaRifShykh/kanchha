import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';

class CheckoutHelper extends ChangeNotifier {
  Widget title(String text) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      ),
    );
  }

  Widget serviceBar(BuildContext context, String icon, String title,
      String type, String price) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: const Color(0xFFF4FBFF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            icon,
            width: 28,
            height: 28,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0,
                ),
              ),
              Text(
                type,
                style: GoogleFonts.poppins(
                  color: ConstantColors.fontColor,
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
          const SizedBox(width: 50.0),
          Text(
            "Rs.$price",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 13.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget inputStyle(TextField textField) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstantColors.medium,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: textField,
    );
  }

  Widget addImageBtn(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstantColors.medium,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.add,
            color: ConstantColors.medium,
          ),
          const SizedBox(width: 15.0),
          Text(
            "Add Images",
            style: GoogleFonts.poppins(
              color: ConstantColors.medium,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget radioBtn(Radio radio, String time) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstantColors.medium,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          radio,
          Text(
            time,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
              color: ConstantColors.medium,
            ),
          )
        ],
      ),
    );
  }

  Widget offerNCoupon(Function onPressed, String icon, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 20.0),
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: ConstantColors.medium,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  icon,
                  width: 28,
                  height: 28,
                ),
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: ConstantColors.medium,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: ConstantColors.medium,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget footerTotal(String title, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: const Color(0xFF505050),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "Rs $price",
          style: GoogleFonts.poppins(
            color: const Color(0xFF505050),
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
