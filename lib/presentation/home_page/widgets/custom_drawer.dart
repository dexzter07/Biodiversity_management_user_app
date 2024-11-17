import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/activities/past_activities/past_activities.dart';
import 'package:wbbb_user/presentation/activities/upcoming_activities/upcoming_activities.dart';
import 'package:wbbb_user/presentation/flora_and_fauna/flora_and_fauna.dart';
import 'package:wbbb_user/presentation/help_and_support/help_and_support.dart';
import 'package:wbbb_user/presentation/profiles/profile.dart';
import 'package:wbbb_user/presentation/setting_page/setting_page.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.surfaceRegular,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: AppColors.primaryLight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 34,
                      backgroundColor: AppColors.surfaceDarker,
                      child: Icon(Icons.person, size: 40, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppColors.primaryRegular,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text('Badge',
                              style: CustomTextStyle.bodySmall(
                                  color: AppColors.primaryOnPrimary)),
                        ),
                        Text('John Doe', style: CustomTextStyle.titleMedium()),
                        Text('+91-9876543210',
                            style: CustomTextStyle.labelMedium()),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text('40% profile completion',
                    style: CustomTextStyle.bodySmall()),
                InkWell(
                  onTap: () {
                    Get.to(() => const Profile());
                  },
                  child: Row(
                    children: [
                      Text('Complete your profile',
                          style: CustomTextStyle.labelLarge()),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.arrow_forward,
                          size: 16, color: Colors.black54),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Menu Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: SvgPicture.asset("assets/icons/svg/events.svg"),
                  title: Text(
                    'Upcoming events',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {
                    Get.to(() => const UpcomingActivities());
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/icons/svg/activity.svg"),
                  title: Text(
                    'Activities',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {
                    Get.to(() => const PastActivities());
                  },
                ),
                ListTile(
                  leading:
                      SvgPicture.asset("assets/icons/svg/heritage-sites.svg"),

                  title: Text(
                    'Heritage sites',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {}, // Add functionality
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/icons/svg/flora.svg"),

                  title: Text(
                    'Protected flora',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {
                    Get.to(() => const FloraAndFauna());
                  }, // Add functionality
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/icons/svg/fauna.svg"),
                  title: Text(
                    'Protected fauna',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {
                    Get.to(() => const FloraAndFauna());
                  },
                ),
                ListTile(
                  leading:
                      SvgPicture.asset("assets/icons/svg/question-circle.svg"),
                  title: Text(
                    'Help and Support',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {
                    Get.to(() => const HelpAndSupportPage());
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/icons/svg/setting.svg"),
                  title: Text(
                    'Settings',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {
                    Get.to(() => const SettingPage());
                  },
                ),
                ListTile(
                  leading: SvgPicture.asset("assets/icons/svg/info-circle.svg"),

                  title: Text(
                    'About WBBB',
                    style: CustomTextStyle.labelLarge(),
                  ),
                  onTap: () {}, // Add functionality
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              leading: SvgPicture.asset(
                "assets/icons/svg/logout.svg",
                color: AppColors.errorRegular,
              ),

              title: Text(
                'Logout',
                style:
                    CustomTextStyle.labelLarge(color: AppColors.errorRegular),
              ),
              onTap: () {}, // Add functionality
            ),
          ),
          const SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
