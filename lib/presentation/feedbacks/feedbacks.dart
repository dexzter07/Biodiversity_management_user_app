import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceRegular,
        title: Text(
          "Feedbacks",
          style: CustomTextStyle.titleMedium(),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
              margin: const EdgeInsets.only(left: 14, top: 8, bottom: 8),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  borderRadius: BorderRadius.circular(30)),
              child: SvgPicture.asset(
                "assets/icons/svg/hamburger.svg",
                width: 24,
                height: 24,
              )),
        ),
      ),
    );
  }
}
