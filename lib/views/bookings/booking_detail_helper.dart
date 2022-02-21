import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';

class BookingDetailHelper extends ChangeNotifier {
  Widget text(BuildContext context, String title, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "-",
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 200,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: ConstantColors.fontColor2,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
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

  Widget budgetCalculate(String title, String budget) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: const Color(0xFF505050),
          ),
        ),
        Text(
          "₹ $budget",
          style: GoogleFonts.poppins(
            color: const Color(0xFF505050),
          ),
        ),
      ],
    );
  }
}
