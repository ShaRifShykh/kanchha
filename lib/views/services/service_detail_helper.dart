import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';

class ServiceDetailHelper extends ChangeNotifier {
  Widget btn(BuildContext context, Function onPressed) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 3,
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
    );
  }

  Widget title(String title) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget prosNCons(BuildContext context, String iconPath, String text) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 15),
        SizedBox(
          width: MediaQuery.of(context).size.width - 90,
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: ConstantColors.fontColor,
            ),
          ),
        )
      ],
    );
  }

  Widget reviews(BuildContext context, String name, String review) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  name,
                  style: GoogleFonts.poppins(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Text(
              review,
              style: GoogleFonts.poppins(
                color: const Color(0xFFACACAC),
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
