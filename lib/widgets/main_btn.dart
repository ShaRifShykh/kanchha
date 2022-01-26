import 'package:flutter/material.dart';
import 'package:kanchha/values/constant_colors.dart';

class MainBtn extends StatelessWidget {
  const MainBtn({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed;
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 15,
        decoration: BoxDecoration(
          color: ConstantColors.medium,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17.0,
              color: ConstantColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
