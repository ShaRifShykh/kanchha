import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanchha/router/route_constant.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/views/address/choose_address_helper.dart';
import 'package:kanchha/widgets/main_btn.dart';
import 'package:provider/provider.dart';

class ChooseAddressPage extends StatefulWidget {
  const ChooseAddressPage({Key? key}) : super(key: key);

  @override
  State<ChooseAddressPage> createState() => _ChooseAddressPageState();
}

class _ChooseAddressPageState extends State<ChooseAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.bgColor,
        title: Text(
          "Choose The Address",
          style: GoogleFonts.poppins(
            color: ConstantColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ConstantColors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .chooseLocation(
                () {
                  Navigator.pushNamed(context, chooseLocationRoute);
                },
              ),
              const SizedBox(height: 40),
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .addresses(
                context,
                () {},
                Radio(
                  value: 0,
                  groupValue: 0,
                  onChanged: (value) {},
                  activeColor: const Color(0xFF13549F),
                ),
                "Toit Indiranagar",
                "Toit Indiranagar, 100 Feet Road, Binnamangala, Indiranagar, Begaluru, Karnataka, India, 256778",
              ),
              const SizedBox(height: 40),
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .addAddressBtn(
                context,
                () {
                  addNewAddress(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  addNewAddress(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22.0),
          topRight: Radius.circular(22.0),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add New Address",
                    style: GoogleFonts.poppins(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .borderDesign(
                context,
                Row(
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
              ),
              const SizedBox(height: 20),
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .inputDesign(
                context,
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "House No. & Floor. *",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF707070),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .inputDesign(
                context,
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Building & Block No. *",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF707070),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .inputDesign(
                context,
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Landmark (Optional)",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF707070),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Tag This Location For Later",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  color: ConstantColors.blueColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Provider.of<ChooseAddressHelper>(context, listen: false)
                      .modalBtn("Home"),
                  Provider.of<ChooseAddressHelper>(context, listen: false)
                      .modalBtn("Work"),
                  Provider.of<ChooseAddressHelper>(context, listen: false)
                      .modalBtn("Other"),
                ],
              ),
              const SizedBox(height: 30),
              Provider.of<ChooseAddressHelper>(context, listen: false)
                  .inputDesign(
                context,
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Save As *",
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xFF707070),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              MainBtn(text: "Save Address", onPressed: () {}),
            ],
          ),
        );
      },
    );
  }
}
