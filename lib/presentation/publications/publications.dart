import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/publications/widgets/custom_category.dart';
import 'package:wbbb_user/presentation/publications/widgets/custom_publication_component.dart';

class Publications extends StatelessWidget {
  const Publications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceRegular,
        title: Text(
          "Publications",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomCategory(
                    backgroundColor: AppColors.primaryLight,
                    label: "All",
                    borderColor: AppColors.borderDark,
                    textColor: AppColors.textPrimary,
                  ),
                  CustomCategory(
                    backgroundColor: AppColors.backgroundRegular,
                    label: "Periodicals",
                    borderColor: AppColors.borderDark,
                    textColor: AppColors.textSecondary,
                  ),
                  CustomCategory(
                    backgroundColor: AppColors.backgroundRegular,
                    label: "Books",
                    borderColor: AppColors.borderDark,
                    textColor: AppColors.textSecondary,
                  ),
                  CustomCategory(
                    backgroundColor: AppColors.backgroundRegular,
                    label: "Annual Publications",
                    borderColor: AppColors.borderDark,
                    textColor: AppColors.textSecondary,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: const [
                  CustomPublicationComponent(),
                  CustomPublicationComponent(),
                  CustomPublicationComponent(),
                  CustomPublicationComponent(),
                  CustomPublicationComponent(),
                  CustomPublicationComponent(),
                  CustomPublicationComponent(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
