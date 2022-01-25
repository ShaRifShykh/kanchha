import 'package:flutter/cupertino.dart';
import 'package:kanchha/values/constant_colors.dart';

class ExtraHelper extends ChangeNotifier {
  Widget helpBtnType(BuildContext context, String imgPath, String text) {
    return Container(
      height: MediaQuery.of(context).size.height / 17,
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        border: Border.all(
          color: ConstantColors.blueColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imgPath,
              scale: 1.5,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
