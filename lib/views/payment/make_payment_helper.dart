import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';

class MakePaymentHelper extends ChangeNotifier {
  Widget cards(Function onPressed, String icon, String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFDEEDFF),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        onTap: () {
          onPressed();
        },
        leading: Image.asset(
          icon,
          width: 32,
          height: 32,
        ),
        title: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: ConstantColors.black,
        ),
      ),
    );
  }

  Widget cod(Function onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFDEEDFF),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        onTap: () {
          onPressed();
        },
        leading: Image.asset(
          Path.icon9,
          width: 32,
          height: 32,
        ),
        title: Text(
          "Cash On Delivery",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: Radio(
          value: 0,
          groupValue: 0,
          onChanged: (value) {},
          activeColor: const Color(0xFF13549F),
        ),
      ),
    );
  }
}
