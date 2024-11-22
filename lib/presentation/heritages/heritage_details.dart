import 'package:flutter_svg/flutter_svg.dart';
import 'package:wbbb_user/core/app_export.dart';

class HeritageDetails extends StatelessWidget {
  const HeritageDetails({super.key});

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
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://cdn.pixabay.com/photo/2018/09/12/19/21/deer-3673017_1280.jpg",
              width: 343,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Sunderban National Park",
            style: CustomTextStyle.headlineSmall(),
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
                "Gosaba, West Bengal, India",
                style:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Explore the Sundarban National Park, a sanctuary committed to preserving the diverse wildlife and ecosystems in the region. Connect with renowned conservationists, scientists, and government officials as they delve into the pressing issues, advancements, and conservation efforts within the park. With hands-on activities and enlightening talks, this sanctuary provides a special platform to enhance your knowledge of biodiversity and contribute to meaningful projects aimed at protecting our environment.",
            style: CustomTextStyle.bodyMedium(color: AppColors.textSecondary),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
