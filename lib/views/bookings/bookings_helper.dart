import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';

class BookingsHelper extends ChangeNotifier {
  Widget bookings(BuildContext context, String mainIcon, String title,
      String date, Function onPressed) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        color: ConstantColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            mainIcon,
            width: 30,
            height: 30,
          ),
          const SizedBox(width: 30.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Delivery Timing $date",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF959595),
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Path.icon3,
                        width: 14,
                        height: 14,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Completed",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF4196F8),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {
                      onPressed();
                    },
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xFF4196F8),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          "View Details",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            color: ConstantColors.whiteColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
