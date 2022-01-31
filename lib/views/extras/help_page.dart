import 'package:flutter/material.dart';
import 'package:kanchha/values/constant_colors.dart';
import 'package:kanchha/values/path.dart';
import 'package:kanchha/views/extras/extra_helper.dart';
import 'package:provider/provider.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        title: const Text(
          "Help",
          style: TextStyle(
            color: ConstantColors.black,
            fontWeight: FontWeight.w600,
            fontSize: 17.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: ConstantColors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "We're here to help.",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: ConstantColors.medium,
                ),
              ),
              const SizedBox(height: 25.0),
              Provider.of<ExtraHelper>(context, listen: false).helpBtnType(
                context,
                Path.phoneIcon,
                "Phone",
              ),
              const SizedBox(height: 25.0),
              const Text(
                "Call 022 4893 0234 to speak to a \nsupport representative now",
                style: TextStyle(
                  color: ConstantColors.fontColor2,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 25.0),
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: const Color(0xffe5e5e5),
              ),
              Provider.of<ExtraHelper>(context, listen: false).helpBtnType(
                context,
                Path.mailIcon,
                "Email",
              ),
              const SizedBox(height: 25.0),
              const Text(
                "Send us an email to support@Phurti.in",
                style: TextStyle(
                  color: ConstantColors.fontColor2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
