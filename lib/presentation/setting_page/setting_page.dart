import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceRegular,
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
                "assets/icons/svg/arrow-left.svg",
                width: 24,
                height: 24,
              )),
        ),
        title: Text(
          "Settings",
          style: CustomTextStyle.titleMedium(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 12,
        ),
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.surfaceRegular,
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                ListTile(
                  leading: Text(
                    "Terms and Conditions",
                    style: CustomTextStyle.labelLarge(),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: Divider(),
                ),
                ListTile(
                  leading: Text(
                    "Privacy Policy",
                    style: CustomTextStyle.labelLarge(),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 47,
            decoration: BoxDecoration(
                color: AppColors.surfaceRegular,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/svg/trash.svg",
                  color: AppColors.errorRegular,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Delete Account",
                  style:
                      CustomTextStyle.labelLarge(color: AppColors.errorRegular),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
