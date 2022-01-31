import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';

class HomeHelper extends ChangeNotifier {
  Widget drawerHeader(BuildContext context) {
    return SizedBox(
      height: 200,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.cancel,
                  color: ConstantColors.lightest,
                  size: 35,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    Path.account,
                    width: 40,
                    height: 40,
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
                      const Text(
                        "+91 3456467888",
                        style: TextStyle(
                          color: ConstantColors.fontColor2,
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    Path.edit,
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerTile(String icon, String title, Function onPressed) {
    return ListTile(
      leading: Image.asset(
        icon,
        width: 24,
        height: 24,
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 15,
      ),
      onTap: () {
        onPressed();
      },
    );
  }

  Widget drawerFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.logout,
          color: Color(0xff748AF9),
          size: 30.0,
        ),
        const SizedBox(width: 10),
        Text(
          "Logout",
          style: GoogleFonts.poppins(
            color: const Color(0xff748AF9),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }

  Widget head(BuildContext context, TextField textField) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hey Komal!",
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ConstantColors.light,
              borderRadius: BorderRadius.circular(11),
            ),
            child: textField,
          )
        ],
      ),
    );
  }

  Widget section(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Path.sectionBG),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We Fix Your Day To \nDay Problems",
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: ConstantColors.whiteColor,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "We make sure excellent service \nthought our expert workers",
                style: GoogleFonts.poppins(
                  fontSize: 10.0,
                  color: ConstantColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget serviceTitle(Function onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Our Services",
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Text("See All",
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                color: ConstantColors.blueColor,
                fontWeight: FontWeight.w600,
              )),
        ),
      ],
    );
  }

  Widget service(BuildContext context, String bg, String title, String man) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.3,
      height: 80,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bg),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: ConstantColors.whiteColor,
            ),
          ),
          Image.asset(
            man,
            scale: 1,
          ),
        ],
      ),
    );
  }

  Widget offers(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Our Offers",
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 15),
        Image.asset(
          Path.offerBG,
          width: MediaQuery.of(context).size.width,
        )
      ],
    );
  }

  Widget elme(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Everyday life made easier",
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "When life gets busy, you don’t have to tackle it alone. Get time back for what you love without breaking the bank.",
          style: GoogleFonts.poppins(
            fontSize: 12.0,
            color: ConstantColors.fontColor2,
          ),
        ),
      ],
    );
  }

  Widget iconWithText(String img, String text) {
    return Row(
      children: [
        Image.asset(
          img,
          width: 30,
          height: 30,
        ),
        const SizedBox(width: 30),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget footer(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Path.footer,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "We Fix Your Day To Day \nProblems",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: ConstantColors.black,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 13),
              Text(
                "Guaranteed Quality With \nInstant Dispute Resolution",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: ConstantColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
