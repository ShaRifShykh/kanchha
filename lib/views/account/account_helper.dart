import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';

class AccountHelper extends ChangeNotifier {
  Widget header(String data, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            Path.account,
            width: 50,
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hey There !",
                style: GoogleFonts.poppins(
                  color: ConstantColors.blueColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
              Text(
                data,
                style: const TextStyle(
                  color: ConstantColors.fontColor2,
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              onPressed();
            },
            child: Image.asset(
              Path.edit,
              width: 16,
              height: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget section(String title, Function onPressed, String data) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: ConstantColors.blueColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () {
                  onPressed();
                },
                child: Image.asset(
                  Path.edit,
                  width: 14,
                  height: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            data,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: ConstantColors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
