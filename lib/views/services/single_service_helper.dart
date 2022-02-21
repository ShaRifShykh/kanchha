import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';

class SingleServiceHelper extends ChangeNotifier {
  Widget singleService(
      BuildContext context,
      String title,
      String rating,
      String rate,
      String des,
      Function onPressed,
      String thumbnail,
      Function onAddPressed) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
        color: ConstantColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Rating",
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: ConstantColors.fontColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "$rating out of 5",
                      style: GoogleFonts.poppins(
                        color: ConstantColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                RichText(
                  text: TextSpan(
                    text: "\$ $rate",
                    style: GoogleFonts.poppins(
                      color: ConstantColors.blueColor,
                    ),
                    children: [
                      TextSpan(
                        text: " / Hour",
                        style: GoogleFonts.poppins(
                          color: ConstantColors.fontColor,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  des,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: ConstantColors.fontColor,
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    onPressed();
                  },
                  child: Text(
                    "View details",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF4196F8),
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset(
                  thumbnail,
                ),
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  onAddPressed();
                },
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF56A5FF),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: ConstantColors.blueColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
