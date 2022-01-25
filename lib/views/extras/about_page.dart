import 'package:flutter/material.dart';
import 'package:kanchha/values/constant_colors.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.bgColor,
      appBar: AppBar(
        backgroundColor: ConstantColors.whiteColor,
        title: const Text(
          "About Us",
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 35.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Condimentum in urna, adipiscing non. Egestas ultrices ut neque nibh sed. Ut aliquam aenean posuere posuere. Eu, sed massa lectus cras lorem massa massa enim egestas. Nisi, justo, facilisis semper nibh. Elementum enim, faucibus molestie malesuada sed dolor, faucibus. Pellentesque elit sed velit consectetur. Diam metus diam nam vitae ut tempor eu id. Sed egestas urna urna nunc, orci. Vitae in nam malesuada eget auctor tincidunt sodales. Velit id nullam tortor vulputate diam luctus. Et, amet neque, in pharetra congue. Varius et pharetra ac volutpat aenean eu dui. Odio sit et accumsan massa suscipit tincidunt pharetra urna.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Condimentum in urna, adipiscing non. Egestas ultrices ut neque nibh sed. Ut aliquam aenean posuere posuere. Eu, sed massa lectus cras lorem massa massa enim egestas. Nisi, justo, facilisis semper nibh. Elementum enim, faucibus molestie malesuada sed dolor, faucibus. Pellentesque elit sed velit consectetur. Diam metus diam nam vitae ut tempor eu id. Sed egestas urna urna nunc, orci. Vitae in nam malesuada eget auctor tincidunt sodalemsan massa suscipit tincidunt pharetra urna.",
            style: TextStyle(
              color: ConstantColors.fontColor,
            ),
          ),
        ),
      ),
    );
  }
}
