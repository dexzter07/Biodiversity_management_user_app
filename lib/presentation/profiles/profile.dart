import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/profiles/edit_profile.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';
import 'package:wbbb_user/widgets/custom_button_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
          "Profile",
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
            padding: const EdgeInsets.all(12),
            height: Get.height * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.surfaceRegular),
            child: Column(
              children: [
                const Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: AppColors.surfaceDarker,
                        child: Icon(Icons.person, size: 40, color: Colors.grey),
                      ),
                    ),
                    Positioned(
                        bottom: 2,
                        right: 2,
                        child: CircleAvatar(
                            backgroundColor: AppColors.backgroundLight,
                            child: Icon(Icons.camera_alt)))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 54,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.primaryRegular,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text('Badge',
                      style: CustomTextStyle.bodySmall(
                          color: AppColors.primaryOnPrimary)),
                ),
                Text('John Doe', style: CustomTextStyle.headlineSmall()),
                Text('+91-9876543210',
                    style: CustomTextStyle.labelLarge(
                        color: AppColors.textSecondary)),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 47,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.primaryRegular)),
                  child: Center(
                    child: Text(
                      "Become a volunteer",
                      style: CustomTextStyle.labelLarge(
                          color: AppColors.primaryRegular),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(24),
            height: Get.height * 0.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.surfaceRegular),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile details",
                  style: CustomTextStyle.titleMedium(),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Your profile is incomplete. Add profile details to see all your information here.",
                  style:
                      CustomTextStyle.bodyLarge(color: AppColors.textSecondary),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                Center(
                  child: Text('40% profile completion',
                      style: CustomTextStyle.bodySmall()),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButtonWidget(
                    text: "Complete your profile",
                    function: () {
                      Get.to(() => const EditProfile());
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
