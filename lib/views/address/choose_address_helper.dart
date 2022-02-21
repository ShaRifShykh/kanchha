import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';

class ChooseAddressHelper extends ChangeNotifier {
  Widget chooseLocation(Function onPressed) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                color: const Color(0xFFDBE1FF),
              ),
            ),
            child: const Icon(
              Icons.location_searching_outlined,
              size: 16,
              color: ConstantColors.medium,
            ),
          ),
          const SizedBox(width: 25),
          Text(
            "Choose The Location",
            style: GoogleFonts.poppins(
              fontSize: 16.0,
              color: ConstantColors.medium,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }

  Widget addresses(BuildContext context, Function onPressed, Radio radio,
      String title, String address) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: const Color(0xFFF4FBFF),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            radio,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  // "Toit Indiranagar",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 120,
                  child: Text(
                    address,
                    // "Toit Indiranagar, 100 Feet Road, Binnamangala, Indiranagar, Begaluru, Karnataka, India, 256778",
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget addAddressBtn(BuildContext context, Function onPressed) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
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
            const Icon(
              Icons.add,
              color: ConstantColors.medium,
            ),
            Text(
              "Add New Addresses",
              style: GoogleFonts.poppins(
                color: ConstantColors.medium,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget borderDesign(BuildContext context, Widget widget) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFBDD6E8),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: widget,
    );
  }

  Widget inputDesign(BuildContext context, Widget widget) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFBDD6E8),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: widget,
    );
  }

  Widget modalBtn(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstantColors.blueColor,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
