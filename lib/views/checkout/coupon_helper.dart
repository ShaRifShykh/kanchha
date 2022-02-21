import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';

class CouponHelper extends ChangeNotifier {
  Widget coupons(BuildContext context, String discount, String icon,
      String desc, String code, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: ConstantColors.whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$discount% Off",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Image.asset(
                  icon,
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 100,
                  child: Text(
                    desc,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xFF6C6B6B),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  width: MediaQuery.of(context).size.width / 2.75,
                  decoration: BoxDecoration(
                    color: ConstantColors.medium,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Center(
                    child: Text(
                      code,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: ConstantColors.whiteColor,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    onPressed();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    width: MediaQuery.of(context).size.width / 2.75,
                    child: Center(
                      child: Text(
                        "Apply",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: ConstantColors.medium,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
