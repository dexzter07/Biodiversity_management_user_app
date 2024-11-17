import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';

class ActivitiesDetail extends StatelessWidget {
  const ActivitiesDetail({super.key});

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
          "Event Details",
          style: CustomTextStyle.titleMedium(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://plus.unsplash.com/premium_photo-1710846919385-e7070b494dd4?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              width: 343,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Biodiversity Conservation Summit",
            style: CustomTextStyle.headlineSmall(),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/icons/svg/calendar.svg"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Nov 15th, 2022, 9:00 AM - 5:00 PM",
                style:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/icons/svg/map.svg"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "West Bengal Biodiversity Park, Kolkata",
                style:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Discover the Biodiversity Conservation Summit, a gathering dedicated to exploring innovative strategies for the preservation and protection of the rich ecosystems in West Bengal. Engage with leading experts, researchers, and policymakers as they discuss the latest trends, challenges, and solutions in biodiversity conservation. From interactive workshops to insightful panel discussions, this summit offers a unique opportunity to deepen your understanding of the importance of biodiversity and collaborate on impactful initiatives to safeguard our natural heritage.",
            style: CustomTextStyle.bodyMedium(color: AppColors.textSecondary),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
