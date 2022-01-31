import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';

class ServiceHelper extends ChangeNotifier {
  Widget service(
      BuildContext context, String bg, String title, String des, String man) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 15, bottom: 15),
            width: MediaQuery.of(context).size.width / 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: ConstantColors.whiteColor,
                    shadows: const [
                      Shadow(
                        offset: Offset(0, 1),
                        blurRadius: 1.0,
                        color: Color.fromARGB(255, 0, 0, 25),
                      ),
                    ],
                  ),
                ),
                Text(
                  des,
                  style: GoogleFonts.poppins(
                     fontSize: 10.0,
                    color: ConstantColors.whiteColor,
                  )
                )
              ],
            ),
          ),
          Positioned(
            right: -240,
            left: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              man,
            ),
          ),
        ],
      ),
    );
  }
}
